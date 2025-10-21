import 'dart:io';
import 'dart:typed_data';
import 'package:drift/drift.dart' as drift;
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:pdfrx/pdfrx.dart';
import 'package:epubx/epubx.dart' as epubx;
import 'package:image/image.dart' as img;
import '../../../../core/database/database.dart';
import '../../../reader/domain/entities/book_entity.dart';
import '../../domain/repositories/book_repository.dart';

class BookRepositoryImpl implements BookRepository {
  final AppDatabase _database;

  BookRepositoryImpl(this._database);

  @override
  Future<List<BookEntity>> getAllBooks() async {
    final books = await _database.getAllBooks();
    return Future.wait(books.map((book) => _mapToEntity(book)));
  }

  @override
  Future<BookEntity?> getBookById(int id) async {
    final book = await _database.getBookById(id);
    if (book == null) return null;
    return _mapToEntity(book);
  }

  @override
  Future<BookEntity> importBook(File file) async {
    final fileName = p.basename(file.path);
    final extension = p.extension(fileName).toLowerCase();
    
    if (extension != '.pdf' && extension != '.epub') {
      throw Exception('Formato de archivo no soportado: $extension');
    }

    final bookType = extension == '.pdf' ? BookType.pdf : BookType.epub;
    
    print('=== Importando libro ===');
    print('Archivo: $fileName');
    print('Tipo: ${bookType.name}');
    
    final metadata = await _extractMetadata(file, bookType);
    
    if (metadata.title == null || metadata.title!.isEmpty) {
      throw Exception('El libro debe tener un título');
    }
    if (metadata.pageCount == null || metadata.pageCount! <= 0) {
      throw Exception('No se pudo determinar el número de páginas');
    }

    print('Título: ${metadata.title}');
    print('Páginas: ${metadata.pageCount}');
    print('Tiene portada: ${metadata.coverImage != null}');

    final appDir = await getApplicationDocumentsDirectory();
    final booksDir = Directory('${appDir.path}/books/${bookType.name}');
    await booksDir.create(recursive: true);
    
    final targetPath = '${booksDir.path}/$fileName';
    await file.copy(targetPath);
    print('Libro copiado a: $targetPath');

    String? coverPath;
    if (metadata.coverImage != null) {
      try {
        final coversDir = Directory('${appDir.path}/covers');
        await coversDir.create(recursive: true);
        
        final timestamp = DateTime.now().millisecondsSinceEpoch;
        final coverFile = File('${coversDir.path}/$timestamp.png');
        await coverFile.writeAsBytes(metadata.coverImage!);
        coverPath = coverFile.path;
        print('Portada guardada en: $coverPath');
      } catch (e) {
        print('Error guardando portada: $e');
      }
    }

    final bookId = await _database.insertBook(
      BooksCompanion(
        title: drift.Value(metadata.title!),
        author: drift.Value(metadata.author),
        filePath: drift.Value(targetPath),
        fileType: drift.Value(bookType.name),
        pageCount: drift.Value(metadata.pageCount!),
        coverImagePath: drift.Value(coverPath),
        dateAdded: drift.Value(DateTime.now()),
      ),
    );

    print('Libro guardado con ID: $bookId');

    return BookEntity(
      id: bookId,
      title: metadata.title!,
      author: metadata.author,
      filePath: targetPath,
      fileType: bookType,
      pageCount: metadata.pageCount!,
      coverImagePath: coverPath,
      dateAdded: DateTime.now(),
    );
  }

  @override
  Future<void> deleteBook(int id) async {
    final book = await _database.getBookById(id);
    if (book != null) {
      final file = File(book.filePath);
      if (await file.exists()) {
        await file.delete();
      }
      
      if (book.coverImagePath != null) {
        final coverFile = File(book.coverImagePath!);
        if (await coverFile.exists()) {
          await coverFile.delete();
        }
      }
      
      await _database.deleteBook(id);
    }
  }

  @override
  Future<void> updateLastOpened(int id) async {
    final book = await _database.getBookById(id);
    if (book != null) {
      await _database.updateBook(
        book.copyWith(lastOpened: drift.Value(DateTime.now())).toCompanion(false),
      );
    }
  }

  @override
  Future<ReadingProgressEntity?> getReadingProgress(int bookId) async {
    final progress = await _database.getReadingProgress(bookId);
    if (progress == null) return null;
    
    return ReadingProgressEntity(
      bookId: progress.bookId,
      currentPage: progress.currentPage,
      percentage: progress.percentage,
      lastRead: progress.lastRead,
    );
  }

  @override
  Future<void> updateReadingProgress({
    required int bookId,
    required int currentPage,
    required double percentage,
  }) async {
    await _database.updateReadingProgress(
      bookId: bookId,
      currentPage: currentPage,
      percentage: percentage,
    );
  }

  @override
  Future<List<BookmarkEntity>> getBookmarks(int bookId) async {
    final bookmarks = await _database.getBookmarksForBook(bookId);
    return bookmarks.map((b) => BookmarkEntity(
      id: b.id,
      bookId: b.bookId,
      pageNumber: b.pageNumber,
      chapterTitle: b.chapterTitle,
      note: b.note,
      createdAt: b.createdAt,
    )).toList();
  }

  @override
  Future<int> addBookmark(BookmarkEntity bookmark) async {
    return await _database.insertBookmark(
      BookmarksCompanion(
        bookId: drift.Value(bookmark.bookId),
        pageNumber: drift.Value(bookmark.pageNumber),
        chapterTitle: drift.Value(bookmark.chapterTitle),
        note: drift.Value(bookmark.note),
        createdAt: drift.Value(bookmark.createdAt),
      ),
    );
  }

  @override
  Future<void> deleteBookmark(int id) async {
    await _database.deleteBookmark(id);
  }

  @override
  Future<List<QuoteEntity>> getQuotes(int bookId) async {
    final quotes = await _database.getQuotesForBook(bookId);
    return quotes.map((q) => QuoteEntity(
      id: q.id,
      bookId: q.bookId,
      text: q.quoteText,
      pageNumber: q.pageNumber,
      chapter: q.chapter,
      highlightColor: q.highlightColor,
      note: q.note,
      createdAt: q.createdAt,
    )).toList();
  }

  @override
  Future<int> addQuote(QuoteEntity quote) async {
    return await _database.insertQuote(
      QuotesCompanion(
        bookId: drift.Value(quote.bookId),
        quoteText: drift.Value(quote.text),
        pageNumber: drift.Value(quote.pageNumber),
        chapter: drift.Value(quote.chapter),
        highlightColor: drift.Value(quote.highlightColor),
        note: drift.Value(quote.note),
        createdAt: drift.Value(quote.createdAt),
      ),
    );
  }

  @override
  Future<void> deleteQuote(int id) async {
    await _database.deleteQuote(id);
  }

  @override
  Future<List<QuoteEntity>> searchQuotes(String searchTerm) async {
    final quotes = await _database.searchQuotes(searchTerm);
    return quotes.map((q) => QuoteEntity(
      id: q.id,
      bookId: q.bookId,
      text: q.quoteText,
      pageNumber: q.pageNumber,
      chapter: q.chapter,
      highlightColor: q.highlightColor,
      note: q.note,
      createdAt: q.createdAt,
    )).toList();
  }

  // ==================== HELPER METHODS ====================

  Future<BookEntity> _mapToEntity(Book book) async {
    final progress = await _database.getReadingProgress(book.id);
    
    return BookEntity(
      id: book.id,
      title: book.title,
      author: book.author,
      filePath: book.filePath,
      fileType: book.fileType == 'pdf' ? BookType.pdf : BookType.epub,
      pageCount: book.pageCount,
      coverImagePath: book.coverImagePath,
      dateAdded: book.dateAdded,
      lastOpened: book.lastOpened,
      readingProgress: progress != null
          ? ReadingProgressEntity(
              bookId: progress.bookId,
              currentPage: progress.currentPage,
              percentage: progress.percentage,
              lastRead: progress.lastRead,
            )
          : null,
    );
  }

  Future<_BookMetadata> _extractMetadata(File file, BookType type) async {
    if (type == BookType.pdf) {
      return _extractPdfMetadata(file);
    } else {
      return _extractEpubMetadata(file);
    }
  }

  Future<_BookMetadata> _extractPdfMetadata(File file) async {
    try {
      print('Abriendo PDF...');
      final document = await PdfDocument.openFile(file.path);
      final pageCount = document.pages.length;
      final title = p.basenameWithoutExtension(file.path);
      
      print('PDF abierto: $pageCount páginas');
      
      List<int>? coverImage;
      if (pageCount > 0) {
        try {
          print('Renderizando primera página...');
          final firstPage = document.pages[0];
          final pageImage = await firstPage.render(
            width: 300,
            height: 400,
            fullWidth: firstPage.width,
            fullHeight: firstPage.height,
          );
          
          if (pageImage != null && pageImage.pixels.isNotEmpty) {
            print('Página renderizada: ${pageImage.width}x${pageImage.height}');
            
            // En image 3.3.0, el constructor es diferente
            final image = img.Image(pageImage.width, pageImage.height);
            
            // Copiar los píxeles
            final bytes = pageImage.pixels.buffer.asUint8List();
            for (int i = 0; i < bytes.length ~/ 4; i++) {
              final offset = i * 4;
              final r = bytes[offset];
              final g = bytes[offset + 1];
              final b = bytes[offset + 2];
              final a = bytes[offset + 3];
              image.data[i] = img.getColor(r, g, b, a);
            }
            
            coverImage = img.encodePng(image);
            print('Portada codificada: ${coverImage.length} bytes');
          }
        } catch (e) {
          print('Error extrayendo portada PDF: $e');
        }
      }
      
      return _BookMetadata(
        title: title,
        pageCount: pageCount,
        coverImage: coverImage,
      );
    } catch (e) {
      throw Exception('Error al leer PDF: $e');
    }
  }

  Future<_BookMetadata> _extractEpubMetadata(File file) async {
    try {
      print('Abriendo EPUB...');
      final bytes = await file.readAsBytes();
      final epub = await epubx.EpubReader.readBook(bytes);
      
      final title = epub.Title ?? p.basenameWithoutExtension(file.path);
      final author = epub.Author;
      final pageCount = epub.Chapters?.length ?? 1;
      
      print('EPUB abierto: $title');
      print('Capítulos: $pageCount');
      
      List<int>? coverImage;
      if (epub.CoverImage != null) {
        try {
          print('Codificando portada EPUB...');
          coverImage = img.encodePng(epub.CoverImage!);
          print('Portada EPUB codificada: ${coverImage.length} bytes');
        } catch (e) {
          print('Error al codificar portada EPUB: $e');
        }
      }
      
      return _BookMetadata(
        title: title,
        author: author,
        pageCount: pageCount,
        coverImage: coverImage,
      );
    } catch (e) {
      throw Exception('Error al leer EPUB: $e');
    }
  }
}

class _BookMetadata {
  final String? title;
  final String? author;
  final int? pageCount;
  final List<int>? coverImage;

  _BookMetadata({
    this.title,
    this.author,
    this.pageCount,
    this.coverImage,
  });
}

import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'tables.dart';

part 'database.g.dart';

@DriftDatabase(tables: [Books, ReadingProgress, Bookmarks, Quotes])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (Migrator m) async {
      await m.createAll();
    },
    onUpgrade: (Migrator m, int from, int to) async {
      // Aquí irán las migraciones futuras
    },
  );

  // ==================== BOOKS ====================
  
  Future<List<Book>> getAllBooks() {
    return (select(books)
      ..orderBy([
        (book) => OrderingTerm(expression: book.lastOpened, mode: OrderingMode.desc),
        (book) => OrderingTerm(expression: book.dateAdded, mode: OrderingMode.desc),
      ]))
      .get();
  }

  Future<Book?> getBookById(int id) {
    return (select(books)..where((book) => book.id.equals(id))).getSingleOrNull();
  }

  Future<int> insertBook(BooksCompanion book) {
    return into(books).insert(book);
  }

  Future<bool> updateBook(BooksCompanion book) {
    return update(books).replace(book);
  }

  Future<int> deleteBook(int id) {
    return (delete(books)..where((book) => book.id.equals(id))).go();
  }

  // ==================== READING PROGRESS ====================
  
  Future<ReadingProgressData?> getReadingProgress(int bookId) {
    return (select(readingProgress)
      ..where((progress) => progress.bookId.equals(bookId)))
      .getSingleOrNull();
  }

  Future<void> updateReadingProgress({
    required int bookId,
    required int currentPage,
    required double percentage,
  }) {
    return into(readingProgress).insertOnConflictUpdate(
      ReadingProgressCompanion(
        bookId: Value(bookId),
        currentPage: Value(currentPage),
        percentage: Value(percentage),
        lastRead: Value(DateTime.now()),
      ),
    );
  }

  // ==================== BOOKMARKS ====================
  
  Future<List<Bookmark>> getBookmarksForBook(int bookId) {
    return (select(bookmarks)
      ..where((bookmark) => bookmark.bookId.equals(bookId))
      ..orderBy([(bookmark) => OrderingTerm.asc(bookmark.pageNumber)]))
      .get();
  }

  Future<int> insertBookmark(BookmarksCompanion bookmark) {
    return into(bookmarks).insert(bookmark);
  }

  Future<int> deleteBookmark(int id) {
    return (delete(bookmarks)..where((bookmark) => bookmark.id.equals(id))).go();
  }

  // ==================== QUOTES ====================
  
  Future<List<Quote>> getQuotesForBook(int bookId) {
    return (select(quotes)
      ..where((quote) => quote.bookId.equals(bookId))
      ..orderBy([(quote) => OrderingTerm.desc(quote.createdAt)]))
      .get();
  }

  Future<int> insertQuote(QuotesCompanion quote) {
    return into(quotes).insert(quote);
  }

  Future<int> deleteQuote(int id) {
    return (delete(quotes)..where((quote) => quote.id.equals(id))).go();
  }

  Future<List<Quote>> searchQuotes(String searchTerm) {
    return (select(quotes)
      ..where((quote) => quote.quoteText.contains(searchTerm))
      ..orderBy([(quote) => OrderingTerm.desc(quote.createdAt)]))
      .get();
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'reader_app.db'));
    return NativeDatabase(file);
  });
}
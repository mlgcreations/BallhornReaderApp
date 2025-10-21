import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:file_picker/file_picker.dart';
import '../../../../core/providers/app_providers.dart';
import '../../../reader/domain/entities/book_entity.dart';
import '../../../reader/presentation/screens/reader_screen.dart';

class LibraryScreen extends ConsumerWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final booksAsync = ref.watch(bookLibraryProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Biblioteca'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              ref.read(bookLibraryProvider.notifier).refresh();
            },
            tooltip: 'Refrescar',
          ),
        ],
      ),
      body: booksAsync.when(
        data: (books) {
          if (books.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.library_books_outlined,
                    size: 80,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'No hay libros en tu biblioteca',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Presiona + para agregar un libro',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            );
          }

          return GridView.builder(
            padding: const EdgeInsets.all(16),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: 0.65,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
            ),
            itemCount: books.length,
            itemBuilder: (context, index) {
              final book = books[index];
              return BookCard(book: book);
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error, size: 60, color: Colors.red),
              const SizedBox(height: 16),
              Text('Error: $error'),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  ref.read(bookLibraryProvider.notifier).refresh();
                },
                child: const Text('Reintentar'),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _importBook(context, ref),
        icon: const Icon(Icons.add),
        label: const Text('Agregar libro'),
      ),
    );
  }

  Future<void> _importBook(BuildContext context, WidgetRef ref) async {
    try {
      final result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf', 'epub'],
      );

      if (result != null && result.files.single.path != null) {
        final filePath = result.files.single.path!;
        
        if (context.mounted) {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) => const AlertDialog(
              content: Row(
                children: [
                  CircularProgressIndicator(),
                  SizedBox(width: 16),
                  Text('Importando libro...'),
                ],
              ),
            ),
          );
        }

        await ref.read(bookLibraryProvider.notifier).importBook(filePath);

        if (context.mounted) {
          Navigator.of(context).pop();
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Libro importado exitosamente')),
          );
        }
      }
    } catch (e) {
      print('ERROR al importar libro: $e');
      if (context.mounted) {
        Navigator.of(context).pop();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error al importar: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }
}

class BookCard extends ConsumerWidget {
  final BookEntity book;

  const BookCard({super.key, required this.book});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () async {
          print('=== DEBUG: Clic en libro ===');
          print('Libro ID: ${book.id}');
          print('Título: ${book.title}');
          print('Ruta: ${book.filePath}');
          
          try {
            await ref.read(currentBookNotifierProvider.notifier).openBook(book.id);
            
            final currentBook = ref.read(currentBookNotifierProvider);
            print('Libro actual después de abrir: ${currentBook?.title}');
            
            if (context.mounted && currentBook != null) {
              print('Navegando a ReaderScreen...');
              await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ReaderScreen(),
                ),
              );
            } else {
              print('ERROR: context no mounted o currentBook es null');
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Error: No se pudo abrir el libro')),
                );
              }
            }
          } catch (e, stackTrace) {
            print('ERROR al abrir libro: $e');
            print('StackTrace: $stackTrace');
            if (context.mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Error: $e')),
              );
            }
          }
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 3,
              child: book.coverImagePath != null
                  ? Image.file(
                      File(book.coverImagePath!),
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        print('Error cargando portada: $error');
                        return _defaultCover();
                      },
                    )
                  : _defaultCover(),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      book.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (book.author != null) ...[
                      const SizedBox(height: 4),
                      Text(
                        book.author!,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[600],
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                    const Spacer(),
                    if (book.readingProgress != null) ...[
                      LinearProgressIndicator(
                        value: book.readingProgress!.percentage / 100,
                        backgroundColor: Colors.grey[300],
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '${book.readingProgress!.percentage.toStringAsFixed(0)}% leído',
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _defaultCover() {
    return Container(
      color: Colors.grey[300],
      child: Icon(
        book.fileType == BookType.pdf ? Icons.picture_as_pdf : Icons.menu_book,
        size: 60,
        color: Colors.grey[600],
      ),
    );
  }
}

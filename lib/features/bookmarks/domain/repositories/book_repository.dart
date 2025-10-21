import 'dart:io';
import '../../../reader/domain/entities/book_entity.dart';

// Interface abstracta - NO depende de implementaciones
abstract class BookRepository {
  /// Obtener todos los libros
  Future<List<BookEntity>> getAllBooks();
  
  /// Obtener un libro por ID
  Future<BookEntity?> getBookById(int id);
  
  /// Importar un nuevo libro desde un archivo
  Future<BookEntity> importBook(File file);
  
  /// Eliminar un libro
  Future<void> deleteBook(int id);
  
  /// Actualizar último acceso
  Future<void> updateLastOpened(int id);
  
  /// Obtener progreso de lectura
  Future<ReadingProgressEntity?> getReadingProgress(int bookId);
  
  /// Actualizar progreso de lectura
  Future<void> updateReadingProgress({
    required int bookId,
    required int currentPage,
    required double percentage,
  });
  
  /// Obtener marcadores de un libro
  Future<List<BookmarkEntity>> getBookmarks(int bookId);
  
  /// Agregar marcador
  Future<int> addBookmark(BookmarkEntity bookmark);
  
  /// Eliminar marcador
  Future<void> deleteBookmark(int id);
  
  /// Obtener citas de un libro
  Future<List<QuoteEntity>> getQuotes(int bookId);
  
  /// Agregar cita
  Future<int> addQuote(QuoteEntity quote);
  
  /// Eliminar cita
  Future<void> deleteQuote(int id);
  
  /// Buscar en citas
  Future<List<QuoteEntity>> searchQuotes(String searchTerm);
}
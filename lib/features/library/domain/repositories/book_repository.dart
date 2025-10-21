import 'dart:io';
import '../../../reader/domain/entities/book_entity.dart';

abstract class BookRepository {
  Future<List<BookEntity>> getAllBooks();
  Future<BookEntity?> getBookById(int id);
  Future<BookEntity> importBook(File file);
  Future<void> deleteBook(int id);
  Future<void> updateLastOpened(int id);
  Future<ReadingProgressEntity?> getReadingProgress(int bookId);
  Future<void> updateReadingProgress({
    required int bookId,
    required int currentPage,
    required double percentage,
  });
  Future<List<BookmarkEntity>> getBookmarks(int bookId);
  Future<int> addBookmark(BookmarkEntity bookmark);
  Future<void> deleteBookmark(int id);
  Future<List<QuoteEntity>> getQuotes(int bookId);
  Future<int> addQuote(QuoteEntity quote);
  Future<void> deleteQuote(int id);
  Future<List<QuoteEntity>> searchQuotes(String searchTerm);
}
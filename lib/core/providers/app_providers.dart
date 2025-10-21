import 'dart:io';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../database/database.dart';
import '../../features/library/domain/repositories/book_repository.dart';
import '../../features/library/data/repositories/book_repository_impl.dart';
import '../../features/reader/domain/entities/book_entity.dart';

part 'app_providers.g.dart';

// ==================== DATABASE ====================

@riverpod
AppDatabase appDatabase(AppDatabaseRef ref) {
  final database = AppDatabase();
  ref.onDispose(() => database.close());
  return database;
}

// ==================== REPOSITORIES ====================

@riverpod
BookRepository bookRepository(BookRepositoryRef ref) {
  final database = ref.watch(appDatabaseProvider);
  return BookRepositoryImpl(database);
}

// ==================== LIBRARY STATE ====================

@riverpod
class BookLibrary extends _$BookLibrary {
  @override
  Future<List<BookEntity>> build() async {
    final repository = ref.watch(bookRepositoryProvider);
    return repository.getAllBooks();
  }

  Future<void> importBook(String filePath) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final repository = ref.read(bookRepositoryProvider);
      await repository.importBook(File(filePath));
      return repository.getAllBooks();
    });
  }

  Future<void> deleteBook(int id) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final repository = ref.read(bookRepositoryProvider);
      await repository.deleteBook(id);
      return repository.getAllBooks();
    });
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final repository = ref.read(bookRepositoryProvider);
      return repository.getAllBooks();
    });
  }
}

// ==================== READER SETTINGS ====================

@riverpod
class ReaderSettingsNotifier extends _$ReaderSettingsNotifier {
  @override
  ReaderSettings build() {
    return const ReaderSettings();
  }

  void setTheme(ReaderTheme theme) {
    state = state.copyWith(theme: theme);
  }

  void setFontSize(double size) {
    state = state.copyWith(fontSize: size);
  }

  void setLineHeight(double height) {
    state = state.copyWith(lineHeight: height);
  }

  void setScrollDirection(bool vertical) {
    state = state.copyWith(scrollVertical: vertical);
  }
}

// ==================== CURRENT BOOK ====================

@riverpod
class CurrentBookNotifier extends _$CurrentBookNotifier {
  @override
  BookEntity? build() => null;

  Future<void> openBook(int bookId) async {
    final repository = ref.read(bookRepositoryProvider);
    final book = await repository.getBookById(bookId);
    
    if (book != null) {
      await repository.updateLastOpened(bookId);
      state = book;
    }
  }

  void closeBook() {
    state = null;
  }

  Future<void> updateProgress(int currentPage) async {
    if (state == null) return;

    final repository = ref.read(bookRepositoryProvider);
    final percentage = (currentPage / state!.pageCount) * 100;

    await repository.updateReadingProgress(
      bookId: state!.id,
      currentPage: currentPage,
      percentage: percentage,
    );

    final updatedProgress = ReadingProgressEntity(
      bookId: state!.id,
      currentPage: currentPage,
      percentage: percentage,
      lastRead: DateTime.now(),
    );

    state = state!.copyWith(readingProgress: updatedProgress);
  }
}

// ==================== BOOKMARKS ====================

@riverpod
class BookmarksNotifier extends _$BookmarksNotifier {
  @override
  Future<List<BookmarkEntity>> build(int bookId) async {
    final repository = ref.watch(bookRepositoryProvider);
    return repository.getBookmarks(bookId);
  }

  Future<void> addBookmark({
    required int pageNumber,
    String? chapterTitle,
    String? note,
  }) async {
    final repository = ref.read(bookRepositoryProvider);
    
    await repository.addBookmark(
      BookmarkEntity(
        id: 0,
        bookId: bookId,
        pageNumber: pageNumber,
        chapterTitle: chapterTitle,
        note: note,
        createdAt: DateTime.now(),
      ),
    );

    ref.invalidateSelf();
  }

  Future<void> deleteBookmark(int id) async {
    final repository = ref.read(bookRepositoryProvider);
    await repository.deleteBookmark(id);
    ref.invalidateSelf();
  }
}

// ==================== QUOTES ====================

@riverpod
class QuotesNotifier extends _$QuotesNotifier {
  @override
  Future<List<QuoteEntity>> build(int bookId) async {
    final repository = ref.watch(bookRepositoryProvider);
    return repository.getQuotes(bookId);
  }

  Future<void> addQuote({
    required String text,
    required int pageNumber,
    String? chapter,
    String? highlightColor,
    String? note,
  }) async {
    final repository = ref.read(bookRepositoryProvider);
    
    await repository.addQuote(
      QuoteEntity(
        id: 0,
        bookId: bookId,
        text: text,
        pageNumber: pageNumber,
        chapter: chapter,
        highlightColor: highlightColor ?? '#FFFF00',
        note: note,
        createdAt: DateTime.now(),
      ),
    );

    ref.invalidateSelf();
  }

  Future<void> deleteQuote(int id) async {
    final repository = ref.read(bookRepositoryProvider);
    await repository.deleteQuote(id);
    ref.invalidateSelf();
  }

  Future<List<QuoteEntity>> searchQuotes(String searchTerm) async {
    final repository = ref.read(bookRepositoryProvider);
    return repository.searchQuotes(searchTerm);
  }
}
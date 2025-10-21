import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_entity.freezed.dart';

enum BookType { pdf, epub }

@freezed
class BookEntity with _$BookEntity {
  const factory BookEntity({
    required int id,
    required String title,
    String? author,
    required String filePath,
    required BookType fileType,
    required int pageCount,
    String? coverImagePath,
    required DateTime dateAdded,
    DateTime? lastOpened,
    ReadingProgressEntity? readingProgress,
  }) = _BookEntity;
}

@freezed
class ReadingProgressEntity with _$ReadingProgressEntity {
  const factory ReadingProgressEntity({
    required int bookId,
    required int currentPage,
    required double percentage,
    required DateTime lastRead,
  }) = _ReadingProgressEntity;
}

@freezed
class BookmarkEntity with _$BookmarkEntity {
  const factory BookmarkEntity({
    required int id,
    required int bookId,
    required int pageNumber,
    String? chapterTitle,
    String? note,
    required DateTime createdAt,
  }) = _BookmarkEntity;
}

@freezed
class QuoteEntity with _$QuoteEntity {
  const factory QuoteEntity({
    required int id,
    required int bookId,
    required String text,
    required int pageNumber,
    String? chapter,
    required String highlightColor,
    String? note,
    required DateTime createdAt,
  }) = _QuoteEntity;
}

enum ReaderTheme {
  normal,
  night,
  sepia,
}

@freezed
class ReaderSettings with _$ReaderSettings {
  const factory ReaderSettings({
    @Default(ReaderTheme.normal) ReaderTheme theme,
    @Default(16.0) double fontSize,
    @Default(1.5) double lineHeight,
    @Default(true) bool scrollVertical,
  }) = _ReaderSettings;
}
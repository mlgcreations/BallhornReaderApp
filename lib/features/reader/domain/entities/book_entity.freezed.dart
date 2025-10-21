// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookEntity {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  String get filePath => throw _privateConstructorUsedError;
  BookType get fileType => throw _privateConstructorUsedError;
  int get pageCount => throw _privateConstructorUsedError;
  String? get coverImagePath => throw _privateConstructorUsedError;
  DateTime get dateAdded => throw _privateConstructorUsedError;
  DateTime? get lastOpened => throw _privateConstructorUsedError;
  ReadingProgressEntity? get readingProgress =>
      throw _privateConstructorUsedError;

  /// Create a copy of BookEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookEntityCopyWith<BookEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookEntityCopyWith<$Res> {
  factory $BookEntityCopyWith(
          BookEntity value, $Res Function(BookEntity) then) =
      _$BookEntityCopyWithImpl<$Res, BookEntity>;
  @useResult
  $Res call(
      {int id,
      String title,
      String? author,
      String filePath,
      BookType fileType,
      int pageCount,
      String? coverImagePath,
      DateTime dateAdded,
      DateTime? lastOpened,
      ReadingProgressEntity? readingProgress});

  $ReadingProgressEntityCopyWith<$Res>? get readingProgress;
}

/// @nodoc
class _$BookEntityCopyWithImpl<$Res, $Val extends BookEntity>
    implements $BookEntityCopyWith<$Res> {
  _$BookEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? author = freezed,
    Object? filePath = null,
    Object? fileType = null,
    Object? pageCount = null,
    Object? coverImagePath = freezed,
    Object? dateAdded = null,
    Object? lastOpened = freezed,
    Object? readingProgress = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      fileType: null == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as BookType,
      pageCount: null == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int,
      coverImagePath: freezed == coverImagePath
          ? _value.coverImagePath
          : coverImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      dateAdded: null == dateAdded
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastOpened: freezed == lastOpened
          ? _value.lastOpened
          : lastOpened // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      readingProgress: freezed == readingProgress
          ? _value.readingProgress
          : readingProgress // ignore: cast_nullable_to_non_nullable
              as ReadingProgressEntity?,
    ) as $Val);
  }

  /// Create a copy of BookEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReadingProgressEntityCopyWith<$Res>? get readingProgress {
    if (_value.readingProgress == null) {
      return null;
    }

    return $ReadingProgressEntityCopyWith<$Res>(_value.readingProgress!,
        (value) {
      return _then(_value.copyWith(readingProgress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookEntityImplCopyWith<$Res>
    implements $BookEntityCopyWith<$Res> {
  factory _$$BookEntityImplCopyWith(
          _$BookEntityImpl value, $Res Function(_$BookEntityImpl) then) =
      __$$BookEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String? author,
      String filePath,
      BookType fileType,
      int pageCount,
      String? coverImagePath,
      DateTime dateAdded,
      DateTime? lastOpened,
      ReadingProgressEntity? readingProgress});

  @override
  $ReadingProgressEntityCopyWith<$Res>? get readingProgress;
}

/// @nodoc
class __$$BookEntityImplCopyWithImpl<$Res>
    extends _$BookEntityCopyWithImpl<$Res, _$BookEntityImpl>
    implements _$$BookEntityImplCopyWith<$Res> {
  __$$BookEntityImplCopyWithImpl(
      _$BookEntityImpl _value, $Res Function(_$BookEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? author = freezed,
    Object? filePath = null,
    Object? fileType = null,
    Object? pageCount = null,
    Object? coverImagePath = freezed,
    Object? dateAdded = null,
    Object? lastOpened = freezed,
    Object? readingProgress = freezed,
  }) {
    return _then(_$BookEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      fileType: null == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as BookType,
      pageCount: null == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int,
      coverImagePath: freezed == coverImagePath
          ? _value.coverImagePath
          : coverImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      dateAdded: null == dateAdded
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastOpened: freezed == lastOpened
          ? _value.lastOpened
          : lastOpened // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      readingProgress: freezed == readingProgress
          ? _value.readingProgress
          : readingProgress // ignore: cast_nullable_to_non_nullable
              as ReadingProgressEntity?,
    ));
  }
}

/// @nodoc

class _$BookEntityImpl implements _BookEntity {
  const _$BookEntityImpl(
      {required this.id,
      required this.title,
      this.author,
      required this.filePath,
      required this.fileType,
      required this.pageCount,
      this.coverImagePath,
      required this.dateAdded,
      this.lastOpened,
      this.readingProgress});

  @override
  final int id;
  @override
  final String title;
  @override
  final String? author;
  @override
  final String filePath;
  @override
  final BookType fileType;
  @override
  final int pageCount;
  @override
  final String? coverImagePath;
  @override
  final DateTime dateAdded;
  @override
  final DateTime? lastOpened;
  @override
  final ReadingProgressEntity? readingProgress;

  @override
  String toString() {
    return 'BookEntity(id: $id, title: $title, author: $author, filePath: $filePath, fileType: $fileType, pageCount: $pageCount, coverImagePath: $coverImagePath, dateAdded: $dateAdded, lastOpened: $lastOpened, readingProgress: $readingProgress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.fileType, fileType) ||
                other.fileType == fileType) &&
            (identical(other.pageCount, pageCount) ||
                other.pageCount == pageCount) &&
            (identical(other.coverImagePath, coverImagePath) ||
                other.coverImagePath == coverImagePath) &&
            (identical(other.dateAdded, dateAdded) ||
                other.dateAdded == dateAdded) &&
            (identical(other.lastOpened, lastOpened) ||
                other.lastOpened == lastOpened) &&
            (identical(other.readingProgress, readingProgress) ||
                other.readingProgress == readingProgress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      author,
      filePath,
      fileType,
      pageCount,
      coverImagePath,
      dateAdded,
      lastOpened,
      readingProgress);

  /// Create a copy of BookEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookEntityImplCopyWith<_$BookEntityImpl> get copyWith =>
      __$$BookEntityImplCopyWithImpl<_$BookEntityImpl>(this, _$identity);
}

abstract class _BookEntity implements BookEntity {
  const factory _BookEntity(
      {required final int id,
      required final String title,
      final String? author,
      required final String filePath,
      required final BookType fileType,
      required final int pageCount,
      final String? coverImagePath,
      required final DateTime dateAdded,
      final DateTime? lastOpened,
      final ReadingProgressEntity? readingProgress}) = _$BookEntityImpl;

  @override
  int get id;
  @override
  String get title;
  @override
  String? get author;
  @override
  String get filePath;
  @override
  BookType get fileType;
  @override
  int get pageCount;
  @override
  String? get coverImagePath;
  @override
  DateTime get dateAdded;
  @override
  DateTime? get lastOpened;
  @override
  ReadingProgressEntity? get readingProgress;

  /// Create a copy of BookEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookEntityImplCopyWith<_$BookEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReadingProgressEntity {
  int get bookId => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  double get percentage => throw _privateConstructorUsedError;
  DateTime get lastRead => throw _privateConstructorUsedError;

  /// Create a copy of ReadingProgressEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReadingProgressEntityCopyWith<ReadingProgressEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadingProgressEntityCopyWith<$Res> {
  factory $ReadingProgressEntityCopyWith(ReadingProgressEntity value,
          $Res Function(ReadingProgressEntity) then) =
      _$ReadingProgressEntityCopyWithImpl<$Res, ReadingProgressEntity>;
  @useResult
  $Res call(
      {int bookId, int currentPage, double percentage, DateTime lastRead});
}

/// @nodoc
class _$ReadingProgressEntityCopyWithImpl<$Res,
        $Val extends ReadingProgressEntity>
    implements $ReadingProgressEntityCopyWith<$Res> {
  _$ReadingProgressEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReadingProgressEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? currentPage = null,
    Object? percentage = null,
    Object? lastRead = null,
  }) {
    return _then(_value.copyWith(
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as double,
      lastRead: null == lastRead
          ? _value.lastRead
          : lastRead // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReadingProgressEntityImplCopyWith<$Res>
    implements $ReadingProgressEntityCopyWith<$Res> {
  factory _$$ReadingProgressEntityImplCopyWith(
          _$ReadingProgressEntityImpl value,
          $Res Function(_$ReadingProgressEntityImpl) then) =
      __$$ReadingProgressEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int bookId, int currentPage, double percentage, DateTime lastRead});
}

/// @nodoc
class __$$ReadingProgressEntityImplCopyWithImpl<$Res>
    extends _$ReadingProgressEntityCopyWithImpl<$Res,
        _$ReadingProgressEntityImpl>
    implements _$$ReadingProgressEntityImplCopyWith<$Res> {
  __$$ReadingProgressEntityImplCopyWithImpl(_$ReadingProgressEntityImpl _value,
      $Res Function(_$ReadingProgressEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReadingProgressEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? currentPage = null,
    Object? percentage = null,
    Object? lastRead = null,
  }) {
    return _then(_$ReadingProgressEntityImpl(
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as double,
      lastRead: null == lastRead
          ? _value.lastRead
          : lastRead // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ReadingProgressEntityImpl implements _ReadingProgressEntity {
  const _$ReadingProgressEntityImpl(
      {required this.bookId,
      required this.currentPage,
      required this.percentage,
      required this.lastRead});

  @override
  final int bookId;
  @override
  final int currentPage;
  @override
  final double percentage;
  @override
  final DateTime lastRead;

  @override
  String toString() {
    return 'ReadingProgressEntity(bookId: $bookId, currentPage: $currentPage, percentage: $percentage, lastRead: $lastRead)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadingProgressEntityImpl &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage) &&
            (identical(other.lastRead, lastRead) ||
                other.lastRead == lastRead));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, bookId, currentPage, percentage, lastRead);

  /// Create a copy of ReadingProgressEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadingProgressEntityImplCopyWith<_$ReadingProgressEntityImpl>
      get copyWith => __$$ReadingProgressEntityImplCopyWithImpl<
          _$ReadingProgressEntityImpl>(this, _$identity);
}

abstract class _ReadingProgressEntity implements ReadingProgressEntity {
  const factory _ReadingProgressEntity(
      {required final int bookId,
      required final int currentPage,
      required final double percentage,
      required final DateTime lastRead}) = _$ReadingProgressEntityImpl;

  @override
  int get bookId;
  @override
  int get currentPage;
  @override
  double get percentage;
  @override
  DateTime get lastRead;

  /// Create a copy of ReadingProgressEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadingProgressEntityImplCopyWith<_$ReadingProgressEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BookmarkEntity {
  int get id => throw _privateConstructorUsedError;
  int get bookId => throw _privateConstructorUsedError;
  int get pageNumber => throw _privateConstructorUsedError;
  String? get chapterTitle => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Create a copy of BookmarkEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookmarkEntityCopyWith<BookmarkEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkEntityCopyWith<$Res> {
  factory $BookmarkEntityCopyWith(
          BookmarkEntity value, $Res Function(BookmarkEntity) then) =
      _$BookmarkEntityCopyWithImpl<$Res, BookmarkEntity>;
  @useResult
  $Res call(
      {int id,
      int bookId,
      int pageNumber,
      String? chapterTitle,
      String? note,
      DateTime createdAt});
}

/// @nodoc
class _$BookmarkEntityCopyWithImpl<$Res, $Val extends BookmarkEntity>
    implements $BookmarkEntityCopyWith<$Res> {
  _$BookmarkEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookmarkEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookId = null,
    Object? pageNumber = null,
    Object? chapterTitle = freezed,
    Object? note = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as int,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      chapterTitle: freezed == chapterTitle
          ? _value.chapterTitle
          : chapterTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookmarkEntityImplCopyWith<$Res>
    implements $BookmarkEntityCopyWith<$Res> {
  factory _$$BookmarkEntityImplCopyWith(_$BookmarkEntityImpl value,
          $Res Function(_$BookmarkEntityImpl) then) =
      __$$BookmarkEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int bookId,
      int pageNumber,
      String? chapterTitle,
      String? note,
      DateTime createdAt});
}

/// @nodoc
class __$$BookmarkEntityImplCopyWithImpl<$Res>
    extends _$BookmarkEntityCopyWithImpl<$Res, _$BookmarkEntityImpl>
    implements _$$BookmarkEntityImplCopyWith<$Res> {
  __$$BookmarkEntityImplCopyWithImpl(
      _$BookmarkEntityImpl _value, $Res Function(_$BookmarkEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookmarkEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookId = null,
    Object? pageNumber = null,
    Object? chapterTitle = freezed,
    Object? note = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$BookmarkEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as int,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      chapterTitle: freezed == chapterTitle
          ? _value.chapterTitle
          : chapterTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$BookmarkEntityImpl implements _BookmarkEntity {
  const _$BookmarkEntityImpl(
      {required this.id,
      required this.bookId,
      required this.pageNumber,
      this.chapterTitle,
      this.note,
      required this.createdAt});

  @override
  final int id;
  @override
  final int bookId;
  @override
  final int pageNumber;
  @override
  final String? chapterTitle;
  @override
  final String? note;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'BookmarkEntity(id: $id, bookId: $bookId, pageNumber: $pageNumber, chapterTitle: $chapterTitle, note: $note, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.chapterTitle, chapterTitle) ||
                other.chapterTitle == chapterTitle) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, bookId, pageNumber, chapterTitle, note, createdAt);

  /// Create a copy of BookmarkEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarkEntityImplCopyWith<_$BookmarkEntityImpl> get copyWith =>
      __$$BookmarkEntityImplCopyWithImpl<_$BookmarkEntityImpl>(
          this, _$identity);
}

abstract class _BookmarkEntity implements BookmarkEntity {
  const factory _BookmarkEntity(
      {required final int id,
      required final int bookId,
      required final int pageNumber,
      final String? chapterTitle,
      final String? note,
      required final DateTime createdAt}) = _$BookmarkEntityImpl;

  @override
  int get id;
  @override
  int get bookId;
  @override
  int get pageNumber;
  @override
  String? get chapterTitle;
  @override
  String? get note;
  @override
  DateTime get createdAt;

  /// Create a copy of BookmarkEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookmarkEntityImplCopyWith<_$BookmarkEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuoteEntity {
  int get id => throw _privateConstructorUsedError;
  int get bookId => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  int get pageNumber => throw _privateConstructorUsedError;
  String? get chapter => throw _privateConstructorUsedError;
  String get highlightColor => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Create a copy of QuoteEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuoteEntityCopyWith<QuoteEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuoteEntityCopyWith<$Res> {
  factory $QuoteEntityCopyWith(
          QuoteEntity value, $Res Function(QuoteEntity) then) =
      _$QuoteEntityCopyWithImpl<$Res, QuoteEntity>;
  @useResult
  $Res call(
      {int id,
      int bookId,
      String text,
      int pageNumber,
      String? chapter,
      String highlightColor,
      String? note,
      DateTime createdAt});
}

/// @nodoc
class _$QuoteEntityCopyWithImpl<$Res, $Val extends QuoteEntity>
    implements $QuoteEntityCopyWith<$Res> {
  _$QuoteEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuoteEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookId = null,
    Object? text = null,
    Object? pageNumber = null,
    Object? chapter = freezed,
    Object? highlightColor = null,
    Object? note = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      chapter: freezed == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as String?,
      highlightColor: null == highlightColor
          ? _value.highlightColor
          : highlightColor // ignore: cast_nullable_to_non_nullable
              as String,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuoteEntityImplCopyWith<$Res>
    implements $QuoteEntityCopyWith<$Res> {
  factory _$$QuoteEntityImplCopyWith(
          _$QuoteEntityImpl value, $Res Function(_$QuoteEntityImpl) then) =
      __$$QuoteEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int bookId,
      String text,
      int pageNumber,
      String? chapter,
      String highlightColor,
      String? note,
      DateTime createdAt});
}

/// @nodoc
class __$$QuoteEntityImplCopyWithImpl<$Res>
    extends _$QuoteEntityCopyWithImpl<$Res, _$QuoteEntityImpl>
    implements _$$QuoteEntityImplCopyWith<$Res> {
  __$$QuoteEntityImplCopyWithImpl(
      _$QuoteEntityImpl _value, $Res Function(_$QuoteEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuoteEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookId = null,
    Object? text = null,
    Object? pageNumber = null,
    Object? chapter = freezed,
    Object? highlightColor = null,
    Object? note = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$QuoteEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      chapter: freezed == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as String?,
      highlightColor: null == highlightColor
          ? _value.highlightColor
          : highlightColor // ignore: cast_nullable_to_non_nullable
              as String,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$QuoteEntityImpl implements _QuoteEntity {
  const _$QuoteEntityImpl(
      {required this.id,
      required this.bookId,
      required this.text,
      required this.pageNumber,
      this.chapter,
      required this.highlightColor,
      this.note,
      required this.createdAt});

  @override
  final int id;
  @override
  final int bookId;
  @override
  final String text;
  @override
  final int pageNumber;
  @override
  final String? chapter;
  @override
  final String highlightColor;
  @override
  final String? note;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'QuoteEntity(id: $id, bookId: $bookId, text: $text, pageNumber: $pageNumber, chapter: $chapter, highlightColor: $highlightColor, note: $note, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuoteEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.chapter, chapter) || other.chapter == chapter) &&
            (identical(other.highlightColor, highlightColor) ||
                other.highlightColor == highlightColor) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, bookId, text, pageNumber,
      chapter, highlightColor, note, createdAt);

  /// Create a copy of QuoteEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuoteEntityImplCopyWith<_$QuoteEntityImpl> get copyWith =>
      __$$QuoteEntityImplCopyWithImpl<_$QuoteEntityImpl>(this, _$identity);
}

abstract class _QuoteEntity implements QuoteEntity {
  const factory _QuoteEntity(
      {required final int id,
      required final int bookId,
      required final String text,
      required final int pageNumber,
      final String? chapter,
      required final String highlightColor,
      final String? note,
      required final DateTime createdAt}) = _$QuoteEntityImpl;

  @override
  int get id;
  @override
  int get bookId;
  @override
  String get text;
  @override
  int get pageNumber;
  @override
  String? get chapter;
  @override
  String get highlightColor;
  @override
  String? get note;
  @override
  DateTime get createdAt;

  /// Create a copy of QuoteEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuoteEntityImplCopyWith<_$QuoteEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReaderSettings {
  ReaderTheme get theme => throw _privateConstructorUsedError;
  double get fontSize => throw _privateConstructorUsedError;
  double get lineHeight => throw _privateConstructorUsedError;
  bool get scrollVertical => throw _privateConstructorUsedError;

  /// Create a copy of ReaderSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReaderSettingsCopyWith<ReaderSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReaderSettingsCopyWith<$Res> {
  factory $ReaderSettingsCopyWith(
          ReaderSettings value, $Res Function(ReaderSettings) then) =
      _$ReaderSettingsCopyWithImpl<$Res, ReaderSettings>;
  @useResult
  $Res call(
      {ReaderTheme theme,
      double fontSize,
      double lineHeight,
      bool scrollVertical});
}

/// @nodoc
class _$ReaderSettingsCopyWithImpl<$Res, $Val extends ReaderSettings>
    implements $ReaderSettingsCopyWith<$Res> {
  _$ReaderSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReaderSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
    Object? fontSize = null,
    Object? lineHeight = null,
    Object? scrollVertical = null,
  }) {
    return _then(_value.copyWith(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ReaderTheme,
      fontSize: null == fontSize
          ? _value.fontSize
          : fontSize // ignore: cast_nullable_to_non_nullable
              as double,
      lineHeight: null == lineHeight
          ? _value.lineHeight
          : lineHeight // ignore: cast_nullable_to_non_nullable
              as double,
      scrollVertical: null == scrollVertical
          ? _value.scrollVertical
          : scrollVertical // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReaderSettingsImplCopyWith<$Res>
    implements $ReaderSettingsCopyWith<$Res> {
  factory _$$ReaderSettingsImplCopyWith(_$ReaderSettingsImpl value,
          $Res Function(_$ReaderSettingsImpl) then) =
      __$$ReaderSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ReaderTheme theme,
      double fontSize,
      double lineHeight,
      bool scrollVertical});
}

/// @nodoc
class __$$ReaderSettingsImplCopyWithImpl<$Res>
    extends _$ReaderSettingsCopyWithImpl<$Res, _$ReaderSettingsImpl>
    implements _$$ReaderSettingsImplCopyWith<$Res> {
  __$$ReaderSettingsImplCopyWithImpl(
      _$ReaderSettingsImpl _value, $Res Function(_$ReaderSettingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReaderSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
    Object? fontSize = null,
    Object? lineHeight = null,
    Object? scrollVertical = null,
  }) {
    return _then(_$ReaderSettingsImpl(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ReaderTheme,
      fontSize: null == fontSize
          ? _value.fontSize
          : fontSize // ignore: cast_nullable_to_non_nullable
              as double,
      lineHeight: null == lineHeight
          ? _value.lineHeight
          : lineHeight // ignore: cast_nullable_to_non_nullable
              as double,
      scrollVertical: null == scrollVertical
          ? _value.scrollVertical
          : scrollVertical // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ReaderSettingsImpl implements _ReaderSettings {
  const _$ReaderSettingsImpl(
      {this.theme = ReaderTheme.normal,
      this.fontSize = 16.0,
      this.lineHeight = 1.5,
      this.scrollVertical = true});

  @override
  @JsonKey()
  final ReaderTheme theme;
  @override
  @JsonKey()
  final double fontSize;
  @override
  @JsonKey()
  final double lineHeight;
  @override
  @JsonKey()
  final bool scrollVertical;

  @override
  String toString() {
    return 'ReaderSettings(theme: $theme, fontSize: $fontSize, lineHeight: $lineHeight, scrollVertical: $scrollVertical)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReaderSettingsImpl &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.fontSize, fontSize) ||
                other.fontSize == fontSize) &&
            (identical(other.lineHeight, lineHeight) ||
                other.lineHeight == lineHeight) &&
            (identical(other.scrollVertical, scrollVertical) ||
                other.scrollVertical == scrollVertical));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, theme, fontSize, lineHeight, scrollVertical);

  /// Create a copy of ReaderSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReaderSettingsImplCopyWith<_$ReaderSettingsImpl> get copyWith =>
      __$$ReaderSettingsImplCopyWithImpl<_$ReaderSettingsImpl>(
          this, _$identity);
}

abstract class _ReaderSettings implements ReaderSettings {
  const factory _ReaderSettings(
      {final ReaderTheme theme,
      final double fontSize,
      final double lineHeight,
      final bool scrollVertical}) = _$ReaderSettingsImpl;

  @override
  ReaderTheme get theme;
  @override
  double get fontSize;
  @override
  double get lineHeight;
  @override
  bool get scrollVertical;

  /// Create a copy of ReaderSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReaderSettingsImplCopyWith<_$ReaderSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $BooksTable extends Books with TableInfo<$BooksTable, Book> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BooksTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 500),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _authorMeta = const VerificationMeta('author');
  @override
  late final GeneratedColumn<String> author = GeneratedColumn<String>(
      'author', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _filePathMeta =
      const VerificationMeta('filePath');
  @override
  late final GeneratedColumn<String> filePath = GeneratedColumn<String>(
      'file_path', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _fileTypeMeta =
      const VerificationMeta('fileType');
  @override
  late final GeneratedColumn<String> fileType = GeneratedColumn<String>(
      'file_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _pageCountMeta =
      const VerificationMeta('pageCount');
  @override
  late final GeneratedColumn<int> pageCount = GeneratedColumn<int>(
      'page_count', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _coverImagePathMeta =
      const VerificationMeta('coverImagePath');
  @override
  late final GeneratedColumn<String> coverImagePath = GeneratedColumn<String>(
      'cover_image_path', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _dateAddedMeta =
      const VerificationMeta('dateAdded');
  @override
  late final GeneratedColumn<DateTime> dateAdded = GeneratedColumn<DateTime>(
      'date_added', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _lastOpenedMeta =
      const VerificationMeta('lastOpened');
  @override
  late final GeneratedColumn<DateTime> lastOpened = GeneratedColumn<DateTime>(
      'last_opened', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        title,
        author,
        filePath,
        fileType,
        pageCount,
        coverImagePath,
        dateAdded,
        lastOpened
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'books';
  @override
  VerificationContext validateIntegrity(Insertable<Book> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('author')) {
      context.handle(_authorMeta,
          author.isAcceptableOrUnknown(data['author']!, _authorMeta));
    }
    if (data.containsKey('file_path')) {
      context.handle(_filePathMeta,
          filePath.isAcceptableOrUnknown(data['file_path']!, _filePathMeta));
    } else if (isInserting) {
      context.missing(_filePathMeta);
    }
    if (data.containsKey('file_type')) {
      context.handle(_fileTypeMeta,
          fileType.isAcceptableOrUnknown(data['file_type']!, _fileTypeMeta));
    } else if (isInserting) {
      context.missing(_fileTypeMeta);
    }
    if (data.containsKey('page_count')) {
      context.handle(_pageCountMeta,
          pageCount.isAcceptableOrUnknown(data['page_count']!, _pageCountMeta));
    } else if (isInserting) {
      context.missing(_pageCountMeta);
    }
    if (data.containsKey('cover_image_path')) {
      context.handle(
          _coverImagePathMeta,
          coverImagePath.isAcceptableOrUnknown(
              data['cover_image_path']!, _coverImagePathMeta));
    }
    if (data.containsKey('date_added')) {
      context.handle(_dateAddedMeta,
          dateAdded.isAcceptableOrUnknown(data['date_added']!, _dateAddedMeta));
    } else if (isInserting) {
      context.missing(_dateAddedMeta);
    }
    if (data.containsKey('last_opened')) {
      context.handle(
          _lastOpenedMeta,
          lastOpened.isAcceptableOrUnknown(
              data['last_opened']!, _lastOpenedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Book map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Book(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      author: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}author']),
      filePath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}file_path'])!,
      fileType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}file_type'])!,
      pageCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}page_count'])!,
      coverImagePath: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}cover_image_path']),
      dateAdded: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date_added'])!,
      lastOpened: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}last_opened']),
    );
  }

  @override
  $BooksTable createAlias(String alias) {
    return $BooksTable(attachedDatabase, alias);
  }
}

class Book extends DataClass implements Insertable<Book> {
  final int id;
  final String title;
  final String? author;
  final String filePath;
  final String fileType;
  final int pageCount;
  final String? coverImagePath;
  final DateTime dateAdded;
  final DateTime? lastOpened;
  const Book(
      {required this.id,
      required this.title,
      this.author,
      required this.filePath,
      required this.fileType,
      required this.pageCount,
      this.coverImagePath,
      required this.dateAdded,
      this.lastOpened});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    if (!nullToAbsent || author != null) {
      map['author'] = Variable<String>(author);
    }
    map['file_path'] = Variable<String>(filePath);
    map['file_type'] = Variable<String>(fileType);
    map['page_count'] = Variable<int>(pageCount);
    if (!nullToAbsent || coverImagePath != null) {
      map['cover_image_path'] = Variable<String>(coverImagePath);
    }
    map['date_added'] = Variable<DateTime>(dateAdded);
    if (!nullToAbsent || lastOpened != null) {
      map['last_opened'] = Variable<DateTime>(lastOpened);
    }
    return map;
  }

  BooksCompanion toCompanion(bool nullToAbsent) {
    return BooksCompanion(
      id: Value(id),
      title: Value(title),
      author:
          author == null && nullToAbsent ? const Value.absent() : Value(author),
      filePath: Value(filePath),
      fileType: Value(fileType),
      pageCount: Value(pageCount),
      coverImagePath: coverImagePath == null && nullToAbsent
          ? const Value.absent()
          : Value(coverImagePath),
      dateAdded: Value(dateAdded),
      lastOpened: lastOpened == null && nullToAbsent
          ? const Value.absent()
          : Value(lastOpened),
    );
  }

  factory Book.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Book(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      author: serializer.fromJson<String?>(json['author']),
      filePath: serializer.fromJson<String>(json['filePath']),
      fileType: serializer.fromJson<String>(json['fileType']),
      pageCount: serializer.fromJson<int>(json['pageCount']),
      coverImagePath: serializer.fromJson<String?>(json['coverImagePath']),
      dateAdded: serializer.fromJson<DateTime>(json['dateAdded']),
      lastOpened: serializer.fromJson<DateTime?>(json['lastOpened']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'author': serializer.toJson<String?>(author),
      'filePath': serializer.toJson<String>(filePath),
      'fileType': serializer.toJson<String>(fileType),
      'pageCount': serializer.toJson<int>(pageCount),
      'coverImagePath': serializer.toJson<String?>(coverImagePath),
      'dateAdded': serializer.toJson<DateTime>(dateAdded),
      'lastOpened': serializer.toJson<DateTime?>(lastOpened),
    };
  }

  Book copyWith(
          {int? id,
          String? title,
          Value<String?> author = const Value.absent(),
          String? filePath,
          String? fileType,
          int? pageCount,
          Value<String?> coverImagePath = const Value.absent(),
          DateTime? dateAdded,
          Value<DateTime?> lastOpened = const Value.absent()}) =>
      Book(
        id: id ?? this.id,
        title: title ?? this.title,
        author: author.present ? author.value : this.author,
        filePath: filePath ?? this.filePath,
        fileType: fileType ?? this.fileType,
        pageCount: pageCount ?? this.pageCount,
        coverImagePath:
            coverImagePath.present ? coverImagePath.value : this.coverImagePath,
        dateAdded: dateAdded ?? this.dateAdded,
        lastOpened: lastOpened.present ? lastOpened.value : this.lastOpened,
      );
  Book copyWithCompanion(BooksCompanion data) {
    return Book(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      author: data.author.present ? data.author.value : this.author,
      filePath: data.filePath.present ? data.filePath.value : this.filePath,
      fileType: data.fileType.present ? data.fileType.value : this.fileType,
      pageCount: data.pageCount.present ? data.pageCount.value : this.pageCount,
      coverImagePath: data.coverImagePath.present
          ? data.coverImagePath.value
          : this.coverImagePath,
      dateAdded: data.dateAdded.present ? data.dateAdded.value : this.dateAdded,
      lastOpened:
          data.lastOpened.present ? data.lastOpened.value : this.lastOpened,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Book(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('author: $author, ')
          ..write('filePath: $filePath, ')
          ..write('fileType: $fileType, ')
          ..write('pageCount: $pageCount, ')
          ..write('coverImagePath: $coverImagePath, ')
          ..write('dateAdded: $dateAdded, ')
          ..write('lastOpened: $lastOpened')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, author, filePath, fileType,
      pageCount, coverImagePath, dateAdded, lastOpened);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Book &&
          other.id == this.id &&
          other.title == this.title &&
          other.author == this.author &&
          other.filePath == this.filePath &&
          other.fileType == this.fileType &&
          other.pageCount == this.pageCount &&
          other.coverImagePath == this.coverImagePath &&
          other.dateAdded == this.dateAdded &&
          other.lastOpened == this.lastOpened);
}

class BooksCompanion extends UpdateCompanion<Book> {
  final Value<int> id;
  final Value<String> title;
  final Value<String?> author;
  final Value<String> filePath;
  final Value<String> fileType;
  final Value<int> pageCount;
  final Value<String?> coverImagePath;
  final Value<DateTime> dateAdded;
  final Value<DateTime?> lastOpened;
  const BooksCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.author = const Value.absent(),
    this.filePath = const Value.absent(),
    this.fileType = const Value.absent(),
    this.pageCount = const Value.absent(),
    this.coverImagePath = const Value.absent(),
    this.dateAdded = const Value.absent(),
    this.lastOpened = const Value.absent(),
  });
  BooksCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    this.author = const Value.absent(),
    required String filePath,
    required String fileType,
    required int pageCount,
    this.coverImagePath = const Value.absent(),
    required DateTime dateAdded,
    this.lastOpened = const Value.absent(),
  })  : title = Value(title),
        filePath = Value(filePath),
        fileType = Value(fileType),
        pageCount = Value(pageCount),
        dateAdded = Value(dateAdded);
  static Insertable<Book> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? author,
    Expression<String>? filePath,
    Expression<String>? fileType,
    Expression<int>? pageCount,
    Expression<String>? coverImagePath,
    Expression<DateTime>? dateAdded,
    Expression<DateTime>? lastOpened,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (author != null) 'author': author,
      if (filePath != null) 'file_path': filePath,
      if (fileType != null) 'file_type': fileType,
      if (pageCount != null) 'page_count': pageCount,
      if (coverImagePath != null) 'cover_image_path': coverImagePath,
      if (dateAdded != null) 'date_added': dateAdded,
      if (lastOpened != null) 'last_opened': lastOpened,
    });
  }

  BooksCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<String?>? author,
      Value<String>? filePath,
      Value<String>? fileType,
      Value<int>? pageCount,
      Value<String?>? coverImagePath,
      Value<DateTime>? dateAdded,
      Value<DateTime?>? lastOpened}) {
    return BooksCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      author: author ?? this.author,
      filePath: filePath ?? this.filePath,
      fileType: fileType ?? this.fileType,
      pageCount: pageCount ?? this.pageCount,
      coverImagePath: coverImagePath ?? this.coverImagePath,
      dateAdded: dateAdded ?? this.dateAdded,
      lastOpened: lastOpened ?? this.lastOpened,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (author.present) {
      map['author'] = Variable<String>(author.value);
    }
    if (filePath.present) {
      map['file_path'] = Variable<String>(filePath.value);
    }
    if (fileType.present) {
      map['file_type'] = Variable<String>(fileType.value);
    }
    if (pageCount.present) {
      map['page_count'] = Variable<int>(pageCount.value);
    }
    if (coverImagePath.present) {
      map['cover_image_path'] = Variable<String>(coverImagePath.value);
    }
    if (dateAdded.present) {
      map['date_added'] = Variable<DateTime>(dateAdded.value);
    }
    if (lastOpened.present) {
      map['last_opened'] = Variable<DateTime>(lastOpened.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BooksCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('author: $author, ')
          ..write('filePath: $filePath, ')
          ..write('fileType: $fileType, ')
          ..write('pageCount: $pageCount, ')
          ..write('coverImagePath: $coverImagePath, ')
          ..write('dateAdded: $dateAdded, ')
          ..write('lastOpened: $lastOpened')
          ..write(')'))
        .toString();
  }
}

class $ReadingProgressTable extends ReadingProgress
    with TableInfo<$ReadingProgressTable, ReadingProgressData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ReadingProgressTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _bookIdMeta = const VerificationMeta('bookId');
  @override
  late final GeneratedColumn<int> bookId = GeneratedColumn<int>(
      'book_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES books (id) ON DELETE CASCADE'));
  static const VerificationMeta _currentPageMeta =
      const VerificationMeta('currentPage');
  @override
  late final GeneratedColumn<int> currentPage = GeneratedColumn<int>(
      'current_page', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(1));
  static const VerificationMeta _percentageMeta =
      const VerificationMeta('percentage');
  @override
  late final GeneratedColumn<double> percentage = GeneratedColumn<double>(
      'percentage', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  static const VerificationMeta _lastReadMeta =
      const VerificationMeta('lastRead');
  @override
  late final GeneratedColumn<DateTime> lastRead = GeneratedColumn<DateTime>(
      'last_read', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [bookId, currentPage, percentage, lastRead];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'reading_progress';
  @override
  VerificationContext validateIntegrity(
      Insertable<ReadingProgressData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('book_id')) {
      context.handle(_bookIdMeta,
          bookId.isAcceptableOrUnknown(data['book_id']!, _bookIdMeta));
    }
    if (data.containsKey('current_page')) {
      context.handle(
          _currentPageMeta,
          currentPage.isAcceptableOrUnknown(
              data['current_page']!, _currentPageMeta));
    }
    if (data.containsKey('percentage')) {
      context.handle(
          _percentageMeta,
          percentage.isAcceptableOrUnknown(
              data['percentage']!, _percentageMeta));
    }
    if (data.containsKey('last_read')) {
      context.handle(_lastReadMeta,
          lastRead.isAcceptableOrUnknown(data['last_read']!, _lastReadMeta));
    } else if (isInserting) {
      context.missing(_lastReadMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {bookId};
  @override
  ReadingProgressData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ReadingProgressData(
      bookId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}book_id'])!,
      currentPage: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}current_page'])!,
      percentage: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}percentage'])!,
      lastRead: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}last_read'])!,
    );
  }

  @override
  $ReadingProgressTable createAlias(String alias) {
    return $ReadingProgressTable(attachedDatabase, alias);
  }
}

class ReadingProgressData extends DataClass
    implements Insertable<ReadingProgressData> {
  final int bookId;
  final int currentPage;
  final double percentage;
  final DateTime lastRead;
  const ReadingProgressData(
      {required this.bookId,
      required this.currentPage,
      required this.percentage,
      required this.lastRead});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['book_id'] = Variable<int>(bookId);
    map['current_page'] = Variable<int>(currentPage);
    map['percentage'] = Variable<double>(percentage);
    map['last_read'] = Variable<DateTime>(lastRead);
    return map;
  }

  ReadingProgressCompanion toCompanion(bool nullToAbsent) {
    return ReadingProgressCompanion(
      bookId: Value(bookId),
      currentPage: Value(currentPage),
      percentage: Value(percentage),
      lastRead: Value(lastRead),
    );
  }

  factory ReadingProgressData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ReadingProgressData(
      bookId: serializer.fromJson<int>(json['bookId']),
      currentPage: serializer.fromJson<int>(json['currentPage']),
      percentage: serializer.fromJson<double>(json['percentage']),
      lastRead: serializer.fromJson<DateTime>(json['lastRead']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'bookId': serializer.toJson<int>(bookId),
      'currentPage': serializer.toJson<int>(currentPage),
      'percentage': serializer.toJson<double>(percentage),
      'lastRead': serializer.toJson<DateTime>(lastRead),
    };
  }

  ReadingProgressData copyWith(
          {int? bookId,
          int? currentPage,
          double? percentage,
          DateTime? lastRead}) =>
      ReadingProgressData(
        bookId: bookId ?? this.bookId,
        currentPage: currentPage ?? this.currentPage,
        percentage: percentage ?? this.percentage,
        lastRead: lastRead ?? this.lastRead,
      );
  ReadingProgressData copyWithCompanion(ReadingProgressCompanion data) {
    return ReadingProgressData(
      bookId: data.bookId.present ? data.bookId.value : this.bookId,
      currentPage:
          data.currentPage.present ? data.currentPage.value : this.currentPage,
      percentage:
          data.percentage.present ? data.percentage.value : this.percentage,
      lastRead: data.lastRead.present ? data.lastRead.value : this.lastRead,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ReadingProgressData(')
          ..write('bookId: $bookId, ')
          ..write('currentPage: $currentPage, ')
          ..write('percentage: $percentage, ')
          ..write('lastRead: $lastRead')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(bookId, currentPage, percentage, lastRead);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ReadingProgressData &&
          other.bookId == this.bookId &&
          other.currentPage == this.currentPage &&
          other.percentage == this.percentage &&
          other.lastRead == this.lastRead);
}

class ReadingProgressCompanion extends UpdateCompanion<ReadingProgressData> {
  final Value<int> bookId;
  final Value<int> currentPage;
  final Value<double> percentage;
  final Value<DateTime> lastRead;
  const ReadingProgressCompanion({
    this.bookId = const Value.absent(),
    this.currentPage = const Value.absent(),
    this.percentage = const Value.absent(),
    this.lastRead = const Value.absent(),
  });
  ReadingProgressCompanion.insert({
    this.bookId = const Value.absent(),
    this.currentPage = const Value.absent(),
    this.percentage = const Value.absent(),
    required DateTime lastRead,
  }) : lastRead = Value(lastRead);
  static Insertable<ReadingProgressData> custom({
    Expression<int>? bookId,
    Expression<int>? currentPage,
    Expression<double>? percentage,
    Expression<DateTime>? lastRead,
  }) {
    return RawValuesInsertable({
      if (bookId != null) 'book_id': bookId,
      if (currentPage != null) 'current_page': currentPage,
      if (percentage != null) 'percentage': percentage,
      if (lastRead != null) 'last_read': lastRead,
    });
  }

  ReadingProgressCompanion copyWith(
      {Value<int>? bookId,
      Value<int>? currentPage,
      Value<double>? percentage,
      Value<DateTime>? lastRead}) {
    return ReadingProgressCompanion(
      bookId: bookId ?? this.bookId,
      currentPage: currentPage ?? this.currentPage,
      percentage: percentage ?? this.percentage,
      lastRead: lastRead ?? this.lastRead,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (bookId.present) {
      map['book_id'] = Variable<int>(bookId.value);
    }
    if (currentPage.present) {
      map['current_page'] = Variable<int>(currentPage.value);
    }
    if (percentage.present) {
      map['percentage'] = Variable<double>(percentage.value);
    }
    if (lastRead.present) {
      map['last_read'] = Variable<DateTime>(lastRead.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ReadingProgressCompanion(')
          ..write('bookId: $bookId, ')
          ..write('currentPage: $currentPage, ')
          ..write('percentage: $percentage, ')
          ..write('lastRead: $lastRead')
          ..write(')'))
        .toString();
  }
}

class $BookmarksTable extends Bookmarks
    with TableInfo<$BookmarksTable, Bookmark> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BookmarksTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _bookIdMeta = const VerificationMeta('bookId');
  @override
  late final GeneratedColumn<int> bookId = GeneratedColumn<int>(
      'book_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES books (id) ON DELETE CASCADE'));
  static const VerificationMeta _pageNumberMeta =
      const VerificationMeta('pageNumber');
  @override
  late final GeneratedColumn<int> pageNumber = GeneratedColumn<int>(
      'page_number', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _chapterTitleMeta =
      const VerificationMeta('chapterTitle');
  @override
  late final GeneratedColumn<String> chapterTitle = GeneratedColumn<String>(
      'chapter_title', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
      'note', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, bookId, pageNumber, chapterTitle, note, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'bookmarks';
  @override
  VerificationContext validateIntegrity(Insertable<Bookmark> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('book_id')) {
      context.handle(_bookIdMeta,
          bookId.isAcceptableOrUnknown(data['book_id']!, _bookIdMeta));
    } else if (isInserting) {
      context.missing(_bookIdMeta);
    }
    if (data.containsKey('page_number')) {
      context.handle(
          _pageNumberMeta,
          pageNumber.isAcceptableOrUnknown(
              data['page_number']!, _pageNumberMeta));
    } else if (isInserting) {
      context.missing(_pageNumberMeta);
    }
    if (data.containsKey('chapter_title')) {
      context.handle(
          _chapterTitleMeta,
          chapterTitle.isAcceptableOrUnknown(
              data['chapter_title']!, _chapterTitleMeta));
    }
    if (data.containsKey('note')) {
      context.handle(
          _noteMeta, note.isAcceptableOrUnknown(data['note']!, _noteMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Bookmark map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Bookmark(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      bookId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}book_id'])!,
      pageNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}page_number'])!,
      chapterTitle: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}chapter_title']),
      note: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}note']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $BookmarksTable createAlias(String alias) {
    return $BookmarksTable(attachedDatabase, alias);
  }
}

class Bookmark extends DataClass implements Insertable<Bookmark> {
  final int id;
  final int bookId;
  final int pageNumber;
  final String? chapterTitle;
  final String? note;
  final DateTime createdAt;
  const Bookmark(
      {required this.id,
      required this.bookId,
      required this.pageNumber,
      this.chapterTitle,
      this.note,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['book_id'] = Variable<int>(bookId);
    map['page_number'] = Variable<int>(pageNumber);
    if (!nullToAbsent || chapterTitle != null) {
      map['chapter_title'] = Variable<String>(chapterTitle);
    }
    if (!nullToAbsent || note != null) {
      map['note'] = Variable<String>(note);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  BookmarksCompanion toCompanion(bool nullToAbsent) {
    return BookmarksCompanion(
      id: Value(id),
      bookId: Value(bookId),
      pageNumber: Value(pageNumber),
      chapterTitle: chapterTitle == null && nullToAbsent
          ? const Value.absent()
          : Value(chapterTitle),
      note: note == null && nullToAbsent ? const Value.absent() : Value(note),
      createdAt: Value(createdAt),
    );
  }

  factory Bookmark.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Bookmark(
      id: serializer.fromJson<int>(json['id']),
      bookId: serializer.fromJson<int>(json['bookId']),
      pageNumber: serializer.fromJson<int>(json['pageNumber']),
      chapterTitle: serializer.fromJson<String?>(json['chapterTitle']),
      note: serializer.fromJson<String?>(json['note']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'bookId': serializer.toJson<int>(bookId),
      'pageNumber': serializer.toJson<int>(pageNumber),
      'chapterTitle': serializer.toJson<String?>(chapterTitle),
      'note': serializer.toJson<String?>(note),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  Bookmark copyWith(
          {int? id,
          int? bookId,
          int? pageNumber,
          Value<String?> chapterTitle = const Value.absent(),
          Value<String?> note = const Value.absent(),
          DateTime? createdAt}) =>
      Bookmark(
        id: id ?? this.id,
        bookId: bookId ?? this.bookId,
        pageNumber: pageNumber ?? this.pageNumber,
        chapterTitle:
            chapterTitle.present ? chapterTitle.value : this.chapterTitle,
        note: note.present ? note.value : this.note,
        createdAt: createdAt ?? this.createdAt,
      );
  Bookmark copyWithCompanion(BookmarksCompanion data) {
    return Bookmark(
      id: data.id.present ? data.id.value : this.id,
      bookId: data.bookId.present ? data.bookId.value : this.bookId,
      pageNumber:
          data.pageNumber.present ? data.pageNumber.value : this.pageNumber,
      chapterTitle: data.chapterTitle.present
          ? data.chapterTitle.value
          : this.chapterTitle,
      note: data.note.present ? data.note.value : this.note,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Bookmark(')
          ..write('id: $id, ')
          ..write('bookId: $bookId, ')
          ..write('pageNumber: $pageNumber, ')
          ..write('chapterTitle: $chapterTitle, ')
          ..write('note: $note, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, bookId, pageNumber, chapterTitle, note, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Bookmark &&
          other.id == this.id &&
          other.bookId == this.bookId &&
          other.pageNumber == this.pageNumber &&
          other.chapterTitle == this.chapterTitle &&
          other.note == this.note &&
          other.createdAt == this.createdAt);
}

class BookmarksCompanion extends UpdateCompanion<Bookmark> {
  final Value<int> id;
  final Value<int> bookId;
  final Value<int> pageNumber;
  final Value<String?> chapterTitle;
  final Value<String?> note;
  final Value<DateTime> createdAt;
  const BookmarksCompanion({
    this.id = const Value.absent(),
    this.bookId = const Value.absent(),
    this.pageNumber = const Value.absent(),
    this.chapterTitle = const Value.absent(),
    this.note = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  BookmarksCompanion.insert({
    this.id = const Value.absent(),
    required int bookId,
    required int pageNumber,
    this.chapterTitle = const Value.absent(),
    this.note = const Value.absent(),
    required DateTime createdAt,
  })  : bookId = Value(bookId),
        pageNumber = Value(pageNumber),
        createdAt = Value(createdAt);
  static Insertable<Bookmark> custom({
    Expression<int>? id,
    Expression<int>? bookId,
    Expression<int>? pageNumber,
    Expression<String>? chapterTitle,
    Expression<String>? note,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (bookId != null) 'book_id': bookId,
      if (pageNumber != null) 'page_number': pageNumber,
      if (chapterTitle != null) 'chapter_title': chapterTitle,
      if (note != null) 'note': note,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  BookmarksCompanion copyWith(
      {Value<int>? id,
      Value<int>? bookId,
      Value<int>? pageNumber,
      Value<String?>? chapterTitle,
      Value<String?>? note,
      Value<DateTime>? createdAt}) {
    return BookmarksCompanion(
      id: id ?? this.id,
      bookId: bookId ?? this.bookId,
      pageNumber: pageNumber ?? this.pageNumber,
      chapterTitle: chapterTitle ?? this.chapterTitle,
      note: note ?? this.note,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (bookId.present) {
      map['book_id'] = Variable<int>(bookId.value);
    }
    if (pageNumber.present) {
      map['page_number'] = Variable<int>(pageNumber.value);
    }
    if (chapterTitle.present) {
      map['chapter_title'] = Variable<String>(chapterTitle.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BookmarksCompanion(')
          ..write('id: $id, ')
          ..write('bookId: $bookId, ')
          ..write('pageNumber: $pageNumber, ')
          ..write('chapterTitle: $chapterTitle, ')
          ..write('note: $note, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $QuotesTable extends Quotes with TableInfo<$QuotesTable, Quote> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $QuotesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _bookIdMeta = const VerificationMeta('bookId');
  @override
  late final GeneratedColumn<int> bookId = GeneratedColumn<int>(
      'book_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES books (id) ON DELETE CASCADE'));
  static const VerificationMeta _quoteTextMeta =
      const VerificationMeta('quoteText');
  @override
  late final GeneratedColumn<String> quoteText = GeneratedColumn<String>(
      'quote_text', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(
          minTextLength: 1, maxTextLength: 5000),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _pageNumberMeta =
      const VerificationMeta('pageNumber');
  @override
  late final GeneratedColumn<int> pageNumber = GeneratedColumn<int>(
      'page_number', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _chapterMeta =
      const VerificationMeta('chapter');
  @override
  late final GeneratedColumn<String> chapter = GeneratedColumn<String>(
      'chapter', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _highlightColorMeta =
      const VerificationMeta('highlightColor');
  @override
  late final GeneratedColumn<String> highlightColor = GeneratedColumn<String>(
      'highlight_color', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('#FFFF00'));
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
      'note', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        bookId,
        quoteText,
        pageNumber,
        chapter,
        highlightColor,
        note,
        createdAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'quotes';
  @override
  VerificationContext validateIntegrity(Insertable<Quote> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('book_id')) {
      context.handle(_bookIdMeta,
          bookId.isAcceptableOrUnknown(data['book_id']!, _bookIdMeta));
    } else if (isInserting) {
      context.missing(_bookIdMeta);
    }
    if (data.containsKey('quote_text')) {
      context.handle(_quoteTextMeta,
          quoteText.isAcceptableOrUnknown(data['quote_text']!, _quoteTextMeta));
    } else if (isInserting) {
      context.missing(_quoteTextMeta);
    }
    if (data.containsKey('page_number')) {
      context.handle(
          _pageNumberMeta,
          pageNumber.isAcceptableOrUnknown(
              data['page_number']!, _pageNumberMeta));
    } else if (isInserting) {
      context.missing(_pageNumberMeta);
    }
    if (data.containsKey('chapter')) {
      context.handle(_chapterMeta,
          chapter.isAcceptableOrUnknown(data['chapter']!, _chapterMeta));
    }
    if (data.containsKey('highlight_color')) {
      context.handle(
          _highlightColorMeta,
          highlightColor.isAcceptableOrUnknown(
              data['highlight_color']!, _highlightColorMeta));
    }
    if (data.containsKey('note')) {
      context.handle(
          _noteMeta, note.isAcceptableOrUnknown(data['note']!, _noteMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Quote map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Quote(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      bookId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}book_id'])!,
      quoteText: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}quote_text'])!,
      pageNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}page_number'])!,
      chapter: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}chapter']),
      highlightColor: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}highlight_color'])!,
      note: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}note']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $QuotesTable createAlias(String alias) {
    return $QuotesTable(attachedDatabase, alias);
  }
}

class Quote extends DataClass implements Insertable<Quote> {
  final int id;
  final int bookId;
  final String quoteText;
  final int pageNumber;
  final String? chapter;
  final String highlightColor;
  final String? note;
  final DateTime createdAt;
  const Quote(
      {required this.id,
      required this.bookId,
      required this.quoteText,
      required this.pageNumber,
      this.chapter,
      required this.highlightColor,
      this.note,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['book_id'] = Variable<int>(bookId);
    map['quote_text'] = Variable<String>(quoteText);
    map['page_number'] = Variable<int>(pageNumber);
    if (!nullToAbsent || chapter != null) {
      map['chapter'] = Variable<String>(chapter);
    }
    map['highlight_color'] = Variable<String>(highlightColor);
    if (!nullToAbsent || note != null) {
      map['note'] = Variable<String>(note);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  QuotesCompanion toCompanion(bool nullToAbsent) {
    return QuotesCompanion(
      id: Value(id),
      bookId: Value(bookId),
      quoteText: Value(quoteText),
      pageNumber: Value(pageNumber),
      chapter: chapter == null && nullToAbsent
          ? const Value.absent()
          : Value(chapter),
      highlightColor: Value(highlightColor),
      note: note == null && nullToAbsent ? const Value.absent() : Value(note),
      createdAt: Value(createdAt),
    );
  }

  factory Quote.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Quote(
      id: serializer.fromJson<int>(json['id']),
      bookId: serializer.fromJson<int>(json['bookId']),
      quoteText: serializer.fromJson<String>(json['quoteText']),
      pageNumber: serializer.fromJson<int>(json['pageNumber']),
      chapter: serializer.fromJson<String?>(json['chapter']),
      highlightColor: serializer.fromJson<String>(json['highlightColor']),
      note: serializer.fromJson<String?>(json['note']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'bookId': serializer.toJson<int>(bookId),
      'quoteText': serializer.toJson<String>(quoteText),
      'pageNumber': serializer.toJson<int>(pageNumber),
      'chapter': serializer.toJson<String?>(chapter),
      'highlightColor': serializer.toJson<String>(highlightColor),
      'note': serializer.toJson<String?>(note),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  Quote copyWith(
          {int? id,
          int? bookId,
          String? quoteText,
          int? pageNumber,
          Value<String?> chapter = const Value.absent(),
          String? highlightColor,
          Value<String?> note = const Value.absent(),
          DateTime? createdAt}) =>
      Quote(
        id: id ?? this.id,
        bookId: bookId ?? this.bookId,
        quoteText: quoteText ?? this.quoteText,
        pageNumber: pageNumber ?? this.pageNumber,
        chapter: chapter.present ? chapter.value : this.chapter,
        highlightColor: highlightColor ?? this.highlightColor,
        note: note.present ? note.value : this.note,
        createdAt: createdAt ?? this.createdAt,
      );
  Quote copyWithCompanion(QuotesCompanion data) {
    return Quote(
      id: data.id.present ? data.id.value : this.id,
      bookId: data.bookId.present ? data.bookId.value : this.bookId,
      quoteText: data.quoteText.present ? data.quoteText.value : this.quoteText,
      pageNumber:
          data.pageNumber.present ? data.pageNumber.value : this.pageNumber,
      chapter: data.chapter.present ? data.chapter.value : this.chapter,
      highlightColor: data.highlightColor.present
          ? data.highlightColor.value
          : this.highlightColor,
      note: data.note.present ? data.note.value : this.note,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Quote(')
          ..write('id: $id, ')
          ..write('bookId: $bookId, ')
          ..write('quoteText: $quoteText, ')
          ..write('pageNumber: $pageNumber, ')
          ..write('chapter: $chapter, ')
          ..write('highlightColor: $highlightColor, ')
          ..write('note: $note, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, bookId, quoteText, pageNumber, chapter,
      highlightColor, note, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Quote &&
          other.id == this.id &&
          other.bookId == this.bookId &&
          other.quoteText == this.quoteText &&
          other.pageNumber == this.pageNumber &&
          other.chapter == this.chapter &&
          other.highlightColor == this.highlightColor &&
          other.note == this.note &&
          other.createdAt == this.createdAt);
}

class QuotesCompanion extends UpdateCompanion<Quote> {
  final Value<int> id;
  final Value<int> bookId;
  final Value<String> quoteText;
  final Value<int> pageNumber;
  final Value<String?> chapter;
  final Value<String> highlightColor;
  final Value<String?> note;
  final Value<DateTime> createdAt;
  const QuotesCompanion({
    this.id = const Value.absent(),
    this.bookId = const Value.absent(),
    this.quoteText = const Value.absent(),
    this.pageNumber = const Value.absent(),
    this.chapter = const Value.absent(),
    this.highlightColor = const Value.absent(),
    this.note = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  QuotesCompanion.insert({
    this.id = const Value.absent(),
    required int bookId,
    required String quoteText,
    required int pageNumber,
    this.chapter = const Value.absent(),
    this.highlightColor = const Value.absent(),
    this.note = const Value.absent(),
    required DateTime createdAt,
  })  : bookId = Value(bookId),
        quoteText = Value(quoteText),
        pageNumber = Value(pageNumber),
        createdAt = Value(createdAt);
  static Insertable<Quote> custom({
    Expression<int>? id,
    Expression<int>? bookId,
    Expression<String>? quoteText,
    Expression<int>? pageNumber,
    Expression<String>? chapter,
    Expression<String>? highlightColor,
    Expression<String>? note,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (bookId != null) 'book_id': bookId,
      if (quoteText != null) 'quote_text': quoteText,
      if (pageNumber != null) 'page_number': pageNumber,
      if (chapter != null) 'chapter': chapter,
      if (highlightColor != null) 'highlight_color': highlightColor,
      if (note != null) 'note': note,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  QuotesCompanion copyWith(
      {Value<int>? id,
      Value<int>? bookId,
      Value<String>? quoteText,
      Value<int>? pageNumber,
      Value<String?>? chapter,
      Value<String>? highlightColor,
      Value<String?>? note,
      Value<DateTime>? createdAt}) {
    return QuotesCompanion(
      id: id ?? this.id,
      bookId: bookId ?? this.bookId,
      quoteText: quoteText ?? this.quoteText,
      pageNumber: pageNumber ?? this.pageNumber,
      chapter: chapter ?? this.chapter,
      highlightColor: highlightColor ?? this.highlightColor,
      note: note ?? this.note,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (bookId.present) {
      map['book_id'] = Variable<int>(bookId.value);
    }
    if (quoteText.present) {
      map['quote_text'] = Variable<String>(quoteText.value);
    }
    if (pageNumber.present) {
      map['page_number'] = Variable<int>(pageNumber.value);
    }
    if (chapter.present) {
      map['chapter'] = Variable<String>(chapter.value);
    }
    if (highlightColor.present) {
      map['highlight_color'] = Variable<String>(highlightColor.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('QuotesCompanion(')
          ..write('id: $id, ')
          ..write('bookId: $bookId, ')
          ..write('quoteText: $quoteText, ')
          ..write('pageNumber: $pageNumber, ')
          ..write('chapter: $chapter, ')
          ..write('highlightColor: $highlightColor, ')
          ..write('note: $note, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $BooksTable books = $BooksTable(this);
  late final $ReadingProgressTable readingProgress =
      $ReadingProgressTable(this);
  late final $BookmarksTable bookmarks = $BookmarksTable(this);
  late final $QuotesTable quotes = $QuotesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [books, readingProgress, bookmarks, quotes];
  @override
  StreamQueryUpdateRules get streamUpdateRules => const StreamQueryUpdateRules(
        [
          WritePropagation(
            on: TableUpdateQuery.onTableName('books',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('reading_progress', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('books',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('bookmarks', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('books',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('quotes', kind: UpdateKind.delete),
            ],
          ),
        ],
      );
}

typedef $$BooksTableCreateCompanionBuilder = BooksCompanion Function({
  Value<int> id,
  required String title,
  Value<String?> author,
  required String filePath,
  required String fileType,
  required int pageCount,
  Value<String?> coverImagePath,
  required DateTime dateAdded,
  Value<DateTime?> lastOpened,
});
typedef $$BooksTableUpdateCompanionBuilder = BooksCompanion Function({
  Value<int> id,
  Value<String> title,
  Value<String?> author,
  Value<String> filePath,
  Value<String> fileType,
  Value<int> pageCount,
  Value<String?> coverImagePath,
  Value<DateTime> dateAdded,
  Value<DateTime?> lastOpened,
});

final class $$BooksTableReferences
    extends BaseReferences<_$AppDatabase, $BooksTable, Book> {
  $$BooksTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$ReadingProgressTable, List<ReadingProgressData>>
      _readingProgressRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.readingProgress,
              aliasName:
                  $_aliasNameGenerator(db.books.id, db.readingProgress.bookId));

  $$ReadingProgressTableProcessedTableManager get readingProgressRefs {
    final manager =
        $$ReadingProgressTableTableManager($_db, $_db.readingProgress)
            .filter((f) => f.bookId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_readingProgressRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$BookmarksTable, List<Bookmark>>
      _bookmarksRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
          db.bookmarks,
          aliasName: $_aliasNameGenerator(db.books.id, db.bookmarks.bookId));

  $$BookmarksTableProcessedTableManager get bookmarksRefs {
    final manager = $$BookmarksTableTableManager($_db, $_db.bookmarks)
        .filter((f) => f.bookId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_bookmarksRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$QuotesTable, List<Quote>> _quotesRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.quotes,
          aliasName: $_aliasNameGenerator(db.books.id, db.quotes.bookId));

  $$QuotesTableProcessedTableManager get quotesRefs {
    final manager = $$QuotesTableTableManager($_db, $_db.quotes)
        .filter((f) => f.bookId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_quotesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$BooksTableFilterComposer extends Composer<_$AppDatabase, $BooksTable> {
  $$BooksTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get author => $composableBuilder(
      column: $table.author, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get filePath => $composableBuilder(
      column: $table.filePath, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get fileType => $composableBuilder(
      column: $table.fileType, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get pageCount => $composableBuilder(
      column: $table.pageCount, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get coverImagePath => $composableBuilder(
      column: $table.coverImagePath,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get dateAdded => $composableBuilder(
      column: $table.dateAdded, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get lastOpened => $composableBuilder(
      column: $table.lastOpened, builder: (column) => ColumnFilters(column));

  Expression<bool> readingProgressRefs(
      Expression<bool> Function($$ReadingProgressTableFilterComposer f) f) {
    final $$ReadingProgressTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.readingProgress,
        getReferencedColumn: (t) => t.bookId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ReadingProgressTableFilterComposer(
              $db: $db,
              $table: $db.readingProgress,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> bookmarksRefs(
      Expression<bool> Function($$BookmarksTableFilterComposer f) f) {
    final $$BookmarksTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.bookmarks,
        getReferencedColumn: (t) => t.bookId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$BookmarksTableFilterComposer(
              $db: $db,
              $table: $db.bookmarks,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> quotesRefs(
      Expression<bool> Function($$QuotesTableFilterComposer f) f) {
    final $$QuotesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.quotes,
        getReferencedColumn: (t) => t.bookId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$QuotesTableFilterComposer(
              $db: $db,
              $table: $db.quotes,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$BooksTableOrderingComposer
    extends Composer<_$AppDatabase, $BooksTable> {
  $$BooksTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get author => $composableBuilder(
      column: $table.author, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get filePath => $composableBuilder(
      column: $table.filePath, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get fileType => $composableBuilder(
      column: $table.fileType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get pageCount => $composableBuilder(
      column: $table.pageCount, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get coverImagePath => $composableBuilder(
      column: $table.coverImagePath,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get dateAdded => $composableBuilder(
      column: $table.dateAdded, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get lastOpened => $composableBuilder(
      column: $table.lastOpened, builder: (column) => ColumnOrderings(column));
}

class $$BooksTableAnnotationComposer
    extends Composer<_$AppDatabase, $BooksTable> {
  $$BooksTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get author =>
      $composableBuilder(column: $table.author, builder: (column) => column);

  GeneratedColumn<String> get filePath =>
      $composableBuilder(column: $table.filePath, builder: (column) => column);

  GeneratedColumn<String> get fileType =>
      $composableBuilder(column: $table.fileType, builder: (column) => column);

  GeneratedColumn<int> get pageCount =>
      $composableBuilder(column: $table.pageCount, builder: (column) => column);

  GeneratedColumn<String> get coverImagePath => $composableBuilder(
      column: $table.coverImagePath, builder: (column) => column);

  GeneratedColumn<DateTime> get dateAdded =>
      $composableBuilder(column: $table.dateAdded, builder: (column) => column);

  GeneratedColumn<DateTime> get lastOpened => $composableBuilder(
      column: $table.lastOpened, builder: (column) => column);

  Expression<T> readingProgressRefs<T extends Object>(
      Expression<T> Function($$ReadingProgressTableAnnotationComposer a) f) {
    final $$ReadingProgressTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.readingProgress,
        getReferencedColumn: (t) => t.bookId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ReadingProgressTableAnnotationComposer(
              $db: $db,
              $table: $db.readingProgress,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> bookmarksRefs<T extends Object>(
      Expression<T> Function($$BookmarksTableAnnotationComposer a) f) {
    final $$BookmarksTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.bookmarks,
        getReferencedColumn: (t) => t.bookId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$BookmarksTableAnnotationComposer(
              $db: $db,
              $table: $db.bookmarks,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> quotesRefs<T extends Object>(
      Expression<T> Function($$QuotesTableAnnotationComposer a) f) {
    final $$QuotesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.quotes,
        getReferencedColumn: (t) => t.bookId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$QuotesTableAnnotationComposer(
              $db: $db,
              $table: $db.quotes,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$BooksTableTableManager extends RootTableManager<
    _$AppDatabase,
    $BooksTable,
    Book,
    $$BooksTableFilterComposer,
    $$BooksTableOrderingComposer,
    $$BooksTableAnnotationComposer,
    $$BooksTableCreateCompanionBuilder,
    $$BooksTableUpdateCompanionBuilder,
    (Book, $$BooksTableReferences),
    Book,
    PrefetchHooks Function(
        {bool readingProgressRefs, bool bookmarksRefs, bool quotesRefs})> {
  $$BooksTableTableManager(_$AppDatabase db, $BooksTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BooksTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$BooksTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$BooksTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<String?> author = const Value.absent(),
            Value<String> filePath = const Value.absent(),
            Value<String> fileType = const Value.absent(),
            Value<int> pageCount = const Value.absent(),
            Value<String?> coverImagePath = const Value.absent(),
            Value<DateTime> dateAdded = const Value.absent(),
            Value<DateTime?> lastOpened = const Value.absent(),
          }) =>
              BooksCompanion(
            id: id,
            title: title,
            author: author,
            filePath: filePath,
            fileType: fileType,
            pageCount: pageCount,
            coverImagePath: coverImagePath,
            dateAdded: dateAdded,
            lastOpened: lastOpened,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String title,
            Value<String?> author = const Value.absent(),
            required String filePath,
            required String fileType,
            required int pageCount,
            Value<String?> coverImagePath = const Value.absent(),
            required DateTime dateAdded,
            Value<DateTime?> lastOpened = const Value.absent(),
          }) =>
              BooksCompanion.insert(
            id: id,
            title: title,
            author: author,
            filePath: filePath,
            fileType: fileType,
            pageCount: pageCount,
            coverImagePath: coverImagePath,
            dateAdded: dateAdded,
            lastOpened: lastOpened,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$BooksTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: (
              {readingProgressRefs = false,
              bookmarksRefs = false,
              quotesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (readingProgressRefs) db.readingProgress,
                if (bookmarksRefs) db.bookmarks,
                if (quotesRefs) db.quotes
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (readingProgressRefs)
                    await $_getPrefetchedData<Book, $BooksTable,
                            ReadingProgressData>(
                        currentTable: table,
                        referencedTable: $$BooksTableReferences
                            ._readingProgressRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$BooksTableReferences(db, table, p0)
                                .readingProgressRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.bookId == item.id),
                        typedResults: items),
                  if (bookmarksRefs)
                    await $_getPrefetchedData<Book, $BooksTable, Bookmark>(
                        currentTable: table,
                        referencedTable:
                            $$BooksTableReferences._bookmarksRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$BooksTableReferences(db, table, p0).bookmarksRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.bookId == item.id),
                        typedResults: items),
                  if (quotesRefs)
                    await $_getPrefetchedData<Book, $BooksTable, Quote>(
                        currentTable: table,
                        referencedTable:
                            $$BooksTableReferences._quotesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$BooksTableReferences(db, table, p0).quotesRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.bookId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$BooksTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $BooksTable,
    Book,
    $$BooksTableFilterComposer,
    $$BooksTableOrderingComposer,
    $$BooksTableAnnotationComposer,
    $$BooksTableCreateCompanionBuilder,
    $$BooksTableUpdateCompanionBuilder,
    (Book, $$BooksTableReferences),
    Book,
    PrefetchHooks Function(
        {bool readingProgressRefs, bool bookmarksRefs, bool quotesRefs})>;
typedef $$ReadingProgressTableCreateCompanionBuilder = ReadingProgressCompanion
    Function({
  Value<int> bookId,
  Value<int> currentPage,
  Value<double> percentage,
  required DateTime lastRead,
});
typedef $$ReadingProgressTableUpdateCompanionBuilder = ReadingProgressCompanion
    Function({
  Value<int> bookId,
  Value<int> currentPage,
  Value<double> percentage,
  Value<DateTime> lastRead,
});

final class $$ReadingProgressTableReferences extends BaseReferences<
    _$AppDatabase, $ReadingProgressTable, ReadingProgressData> {
  $$ReadingProgressTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $BooksTable _bookIdTable(_$AppDatabase db) => db.books.createAlias(
      $_aliasNameGenerator(db.readingProgress.bookId, db.books.id));

  $$BooksTableProcessedTableManager get bookId {
    final $_column = $_itemColumn<int>('book_id')!;

    final manager = $$BooksTableTableManager($_db, $_db.books)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_bookIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$ReadingProgressTableFilterComposer
    extends Composer<_$AppDatabase, $ReadingProgressTable> {
  $$ReadingProgressTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get currentPage => $composableBuilder(
      column: $table.currentPage, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get percentage => $composableBuilder(
      column: $table.percentage, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get lastRead => $composableBuilder(
      column: $table.lastRead, builder: (column) => ColumnFilters(column));

  $$BooksTableFilterComposer get bookId {
    final $$BooksTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.bookId,
        referencedTable: $db.books,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$BooksTableFilterComposer(
              $db: $db,
              $table: $db.books,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ReadingProgressTableOrderingComposer
    extends Composer<_$AppDatabase, $ReadingProgressTable> {
  $$ReadingProgressTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get currentPage => $composableBuilder(
      column: $table.currentPage, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get percentage => $composableBuilder(
      column: $table.percentage, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get lastRead => $composableBuilder(
      column: $table.lastRead, builder: (column) => ColumnOrderings(column));

  $$BooksTableOrderingComposer get bookId {
    final $$BooksTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.bookId,
        referencedTable: $db.books,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$BooksTableOrderingComposer(
              $db: $db,
              $table: $db.books,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ReadingProgressTableAnnotationComposer
    extends Composer<_$AppDatabase, $ReadingProgressTable> {
  $$ReadingProgressTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get currentPage => $composableBuilder(
      column: $table.currentPage, builder: (column) => column);

  GeneratedColumn<double> get percentage => $composableBuilder(
      column: $table.percentage, builder: (column) => column);

  GeneratedColumn<DateTime> get lastRead =>
      $composableBuilder(column: $table.lastRead, builder: (column) => column);

  $$BooksTableAnnotationComposer get bookId {
    final $$BooksTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.bookId,
        referencedTable: $db.books,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$BooksTableAnnotationComposer(
              $db: $db,
              $table: $db.books,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ReadingProgressTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ReadingProgressTable,
    ReadingProgressData,
    $$ReadingProgressTableFilterComposer,
    $$ReadingProgressTableOrderingComposer,
    $$ReadingProgressTableAnnotationComposer,
    $$ReadingProgressTableCreateCompanionBuilder,
    $$ReadingProgressTableUpdateCompanionBuilder,
    (ReadingProgressData, $$ReadingProgressTableReferences),
    ReadingProgressData,
    PrefetchHooks Function({bool bookId})> {
  $$ReadingProgressTableTableManager(
      _$AppDatabase db, $ReadingProgressTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ReadingProgressTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ReadingProgressTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ReadingProgressTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> bookId = const Value.absent(),
            Value<int> currentPage = const Value.absent(),
            Value<double> percentage = const Value.absent(),
            Value<DateTime> lastRead = const Value.absent(),
          }) =>
              ReadingProgressCompanion(
            bookId: bookId,
            currentPage: currentPage,
            percentage: percentage,
            lastRead: lastRead,
          ),
          createCompanionCallback: ({
            Value<int> bookId = const Value.absent(),
            Value<int> currentPage = const Value.absent(),
            Value<double> percentage = const Value.absent(),
            required DateTime lastRead,
          }) =>
              ReadingProgressCompanion.insert(
            bookId: bookId,
            currentPage: currentPage,
            percentage: percentage,
            lastRead: lastRead,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$ReadingProgressTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({bookId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (bookId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.bookId,
                    referencedTable:
                        $$ReadingProgressTableReferences._bookIdTable(db),
                    referencedColumn:
                        $$ReadingProgressTableReferences._bookIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$ReadingProgressTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ReadingProgressTable,
    ReadingProgressData,
    $$ReadingProgressTableFilterComposer,
    $$ReadingProgressTableOrderingComposer,
    $$ReadingProgressTableAnnotationComposer,
    $$ReadingProgressTableCreateCompanionBuilder,
    $$ReadingProgressTableUpdateCompanionBuilder,
    (ReadingProgressData, $$ReadingProgressTableReferences),
    ReadingProgressData,
    PrefetchHooks Function({bool bookId})>;
typedef $$BookmarksTableCreateCompanionBuilder = BookmarksCompanion Function({
  Value<int> id,
  required int bookId,
  required int pageNumber,
  Value<String?> chapterTitle,
  Value<String?> note,
  required DateTime createdAt,
});
typedef $$BookmarksTableUpdateCompanionBuilder = BookmarksCompanion Function({
  Value<int> id,
  Value<int> bookId,
  Value<int> pageNumber,
  Value<String?> chapterTitle,
  Value<String?> note,
  Value<DateTime> createdAt,
});

final class $$BookmarksTableReferences
    extends BaseReferences<_$AppDatabase, $BookmarksTable, Bookmark> {
  $$BookmarksTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $BooksTable _bookIdTable(_$AppDatabase db) => db.books
      .createAlias($_aliasNameGenerator(db.bookmarks.bookId, db.books.id));

  $$BooksTableProcessedTableManager get bookId {
    final $_column = $_itemColumn<int>('book_id')!;

    final manager = $$BooksTableTableManager($_db, $_db.books)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_bookIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$BookmarksTableFilterComposer
    extends Composer<_$AppDatabase, $BookmarksTable> {
  $$BookmarksTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get pageNumber => $composableBuilder(
      column: $table.pageNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get chapterTitle => $composableBuilder(
      column: $table.chapterTitle, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get note => $composableBuilder(
      column: $table.note, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  $$BooksTableFilterComposer get bookId {
    final $$BooksTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.bookId,
        referencedTable: $db.books,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$BooksTableFilterComposer(
              $db: $db,
              $table: $db.books,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$BookmarksTableOrderingComposer
    extends Composer<_$AppDatabase, $BookmarksTable> {
  $$BookmarksTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get pageNumber => $composableBuilder(
      column: $table.pageNumber, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get chapterTitle => $composableBuilder(
      column: $table.chapterTitle,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get note => $composableBuilder(
      column: $table.note, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  $$BooksTableOrderingComposer get bookId {
    final $$BooksTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.bookId,
        referencedTable: $db.books,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$BooksTableOrderingComposer(
              $db: $db,
              $table: $db.books,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$BookmarksTableAnnotationComposer
    extends Composer<_$AppDatabase, $BookmarksTable> {
  $$BookmarksTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get pageNumber => $composableBuilder(
      column: $table.pageNumber, builder: (column) => column);

  GeneratedColumn<String> get chapterTitle => $composableBuilder(
      column: $table.chapterTitle, builder: (column) => column);

  GeneratedColumn<String> get note =>
      $composableBuilder(column: $table.note, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$BooksTableAnnotationComposer get bookId {
    final $$BooksTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.bookId,
        referencedTable: $db.books,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$BooksTableAnnotationComposer(
              $db: $db,
              $table: $db.books,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$BookmarksTableTableManager extends RootTableManager<
    _$AppDatabase,
    $BookmarksTable,
    Bookmark,
    $$BookmarksTableFilterComposer,
    $$BookmarksTableOrderingComposer,
    $$BookmarksTableAnnotationComposer,
    $$BookmarksTableCreateCompanionBuilder,
    $$BookmarksTableUpdateCompanionBuilder,
    (Bookmark, $$BookmarksTableReferences),
    Bookmark,
    PrefetchHooks Function({bool bookId})> {
  $$BookmarksTableTableManager(_$AppDatabase db, $BookmarksTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BookmarksTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$BookmarksTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$BookmarksTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> bookId = const Value.absent(),
            Value<int> pageNumber = const Value.absent(),
            Value<String?> chapterTitle = const Value.absent(),
            Value<String?> note = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
          }) =>
              BookmarksCompanion(
            id: id,
            bookId: bookId,
            pageNumber: pageNumber,
            chapterTitle: chapterTitle,
            note: note,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int bookId,
            required int pageNumber,
            Value<String?> chapterTitle = const Value.absent(),
            Value<String?> note = const Value.absent(),
            required DateTime createdAt,
          }) =>
              BookmarksCompanion.insert(
            id: id,
            bookId: bookId,
            pageNumber: pageNumber,
            chapterTitle: chapterTitle,
            note: note,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$BookmarksTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({bookId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (bookId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.bookId,
                    referencedTable:
                        $$BookmarksTableReferences._bookIdTable(db),
                    referencedColumn:
                        $$BookmarksTableReferences._bookIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$BookmarksTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $BookmarksTable,
    Bookmark,
    $$BookmarksTableFilterComposer,
    $$BookmarksTableOrderingComposer,
    $$BookmarksTableAnnotationComposer,
    $$BookmarksTableCreateCompanionBuilder,
    $$BookmarksTableUpdateCompanionBuilder,
    (Bookmark, $$BookmarksTableReferences),
    Bookmark,
    PrefetchHooks Function({bool bookId})>;
typedef $$QuotesTableCreateCompanionBuilder = QuotesCompanion Function({
  Value<int> id,
  required int bookId,
  required String quoteText,
  required int pageNumber,
  Value<String?> chapter,
  Value<String> highlightColor,
  Value<String?> note,
  required DateTime createdAt,
});
typedef $$QuotesTableUpdateCompanionBuilder = QuotesCompanion Function({
  Value<int> id,
  Value<int> bookId,
  Value<String> quoteText,
  Value<int> pageNumber,
  Value<String?> chapter,
  Value<String> highlightColor,
  Value<String?> note,
  Value<DateTime> createdAt,
});

final class $$QuotesTableReferences
    extends BaseReferences<_$AppDatabase, $QuotesTable, Quote> {
  $$QuotesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $BooksTable _bookIdTable(_$AppDatabase db) =>
      db.books.createAlias($_aliasNameGenerator(db.quotes.bookId, db.books.id));

  $$BooksTableProcessedTableManager get bookId {
    final $_column = $_itemColumn<int>('book_id')!;

    final manager = $$BooksTableTableManager($_db, $_db.books)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_bookIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$QuotesTableFilterComposer
    extends Composer<_$AppDatabase, $QuotesTable> {
  $$QuotesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get quoteText => $composableBuilder(
      column: $table.quoteText, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get pageNumber => $composableBuilder(
      column: $table.pageNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get chapter => $composableBuilder(
      column: $table.chapter, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get highlightColor => $composableBuilder(
      column: $table.highlightColor,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get note => $composableBuilder(
      column: $table.note, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  $$BooksTableFilterComposer get bookId {
    final $$BooksTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.bookId,
        referencedTable: $db.books,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$BooksTableFilterComposer(
              $db: $db,
              $table: $db.books,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$QuotesTableOrderingComposer
    extends Composer<_$AppDatabase, $QuotesTable> {
  $$QuotesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get quoteText => $composableBuilder(
      column: $table.quoteText, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get pageNumber => $composableBuilder(
      column: $table.pageNumber, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get chapter => $composableBuilder(
      column: $table.chapter, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get highlightColor => $composableBuilder(
      column: $table.highlightColor,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get note => $composableBuilder(
      column: $table.note, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  $$BooksTableOrderingComposer get bookId {
    final $$BooksTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.bookId,
        referencedTable: $db.books,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$BooksTableOrderingComposer(
              $db: $db,
              $table: $db.books,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$QuotesTableAnnotationComposer
    extends Composer<_$AppDatabase, $QuotesTable> {
  $$QuotesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get quoteText =>
      $composableBuilder(column: $table.quoteText, builder: (column) => column);

  GeneratedColumn<int> get pageNumber => $composableBuilder(
      column: $table.pageNumber, builder: (column) => column);

  GeneratedColumn<String> get chapter =>
      $composableBuilder(column: $table.chapter, builder: (column) => column);

  GeneratedColumn<String> get highlightColor => $composableBuilder(
      column: $table.highlightColor, builder: (column) => column);

  GeneratedColumn<String> get note =>
      $composableBuilder(column: $table.note, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$BooksTableAnnotationComposer get bookId {
    final $$BooksTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.bookId,
        referencedTable: $db.books,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$BooksTableAnnotationComposer(
              $db: $db,
              $table: $db.books,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$QuotesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $QuotesTable,
    Quote,
    $$QuotesTableFilterComposer,
    $$QuotesTableOrderingComposer,
    $$QuotesTableAnnotationComposer,
    $$QuotesTableCreateCompanionBuilder,
    $$QuotesTableUpdateCompanionBuilder,
    (Quote, $$QuotesTableReferences),
    Quote,
    PrefetchHooks Function({bool bookId})> {
  $$QuotesTableTableManager(_$AppDatabase db, $QuotesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$QuotesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$QuotesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$QuotesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> bookId = const Value.absent(),
            Value<String> quoteText = const Value.absent(),
            Value<int> pageNumber = const Value.absent(),
            Value<String?> chapter = const Value.absent(),
            Value<String> highlightColor = const Value.absent(),
            Value<String?> note = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
          }) =>
              QuotesCompanion(
            id: id,
            bookId: bookId,
            quoteText: quoteText,
            pageNumber: pageNumber,
            chapter: chapter,
            highlightColor: highlightColor,
            note: note,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int bookId,
            required String quoteText,
            required int pageNumber,
            Value<String?> chapter = const Value.absent(),
            Value<String> highlightColor = const Value.absent(),
            Value<String?> note = const Value.absent(),
            required DateTime createdAt,
          }) =>
              QuotesCompanion.insert(
            id: id,
            bookId: bookId,
            quoteText: quoteText,
            pageNumber: pageNumber,
            chapter: chapter,
            highlightColor: highlightColor,
            note: note,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$QuotesTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({bookId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (bookId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.bookId,
                    referencedTable: $$QuotesTableReferences._bookIdTable(db),
                    referencedColumn:
                        $$QuotesTableReferences._bookIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$QuotesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $QuotesTable,
    Quote,
    $$QuotesTableFilterComposer,
    $$QuotesTableOrderingComposer,
    $$QuotesTableAnnotationComposer,
    $$QuotesTableCreateCompanionBuilder,
    $$QuotesTableUpdateCompanionBuilder,
    (Quote, $$QuotesTableReferences),
    Quote,
    PrefetchHooks Function({bool bookId})>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$BooksTableTableManager get books =>
      $$BooksTableTableManager(_db, _db.books);
  $$ReadingProgressTableTableManager get readingProgress =>
      $$ReadingProgressTableTableManager(_db, _db.readingProgress);
  $$BookmarksTableTableManager get bookmarks =>
      $$BookmarksTableTableManager(_db, _db.bookmarks);
  $$QuotesTableTableManager get quotes =>
      $$QuotesTableTableManager(_db, _db.quotes);
}

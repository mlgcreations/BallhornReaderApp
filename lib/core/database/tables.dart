import 'package:drift/drift.dart';

// Tabla de libros
class Books extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().withLength(min: 1, max: 500)();
  TextColumn get author => text().nullable()();
  TextColumn get filePath => text()();
  TextColumn get fileType => text()(); // 'pdf' o 'epub'
  IntColumn get pageCount => integer()();
  TextColumn get coverImagePath => text().nullable()();
  DateTimeColumn get dateAdded => dateTime()();
  DateTimeColumn get lastOpened => dateTime().nullable()();
}

// Tabla de progreso de lectura
class ReadingProgress extends Table {
  IntColumn get bookId => integer().references(Books, #id, onDelete: KeyAction.cascade)();
  IntColumn get currentPage => integer().withDefault(const Constant(1))();
  RealColumn get percentage => real().withDefault(const Constant(0.0))();
  DateTimeColumn get lastRead => dateTime()();

  @override
  Set<Column> get primaryKey => {bookId};
}

// Tabla de marcadores
class Bookmarks extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get bookId => integer().references(Books, #id, onDelete: KeyAction.cascade)();
  IntColumn get pageNumber => integer()();
  TextColumn get chapterTitle => text().nullable()();
  TextColumn get note => text().nullable()();
  DateTimeColumn get createdAt => dateTime()();
}

// Tabla de citas - CORREGIDA
class Quotes extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get bookId => integer().references(Books, #id, onDelete: KeyAction.cascade)();
  TextColumn get quoteText => text().withLength(min: 1, max: 5000)();  // Cambiado de 'text' a 'quoteText'
  IntColumn get pageNumber => integer()();
  TextColumn get chapter => text().nullable()();
  TextColumn get highlightColor => text().withDefault(const Constant('#FFFF00'))();
  TextColumn get note => text().nullable()();
  DateTimeColumn get createdAt => dateTime()();
}
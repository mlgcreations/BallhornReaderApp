// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$appDatabaseHash() => r'ac597c5c91357d04f5c97c1cc4a81a4ab58aee35';

/// See also [appDatabase].
@ProviderFor(appDatabase)
final appDatabaseProvider = AutoDisposeProvider<AppDatabase>.internal(
  appDatabase,
  name: r'appDatabaseProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$appDatabaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AppDatabaseRef = AutoDisposeProviderRef<AppDatabase>;
String _$bookRepositoryHash() => r'660a2588f9513e173f90907eb7e4e7735d3da565';

/// See also [bookRepository].
@ProviderFor(bookRepository)
final bookRepositoryProvider = AutoDisposeProvider<BookRepository>.internal(
  bookRepository,
  name: r'bookRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$bookRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef BookRepositoryRef = AutoDisposeProviderRef<BookRepository>;
String _$bookLibraryHash() => r'5a71fd89841f3f8196b737bc0a59b06ef06c3d1d';

/// See also [BookLibrary].
@ProviderFor(BookLibrary)
final bookLibraryProvider =
    AutoDisposeAsyncNotifierProvider<BookLibrary, List<BookEntity>>.internal(
  BookLibrary.new,
  name: r'bookLibraryProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$bookLibraryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$BookLibrary = AutoDisposeAsyncNotifier<List<BookEntity>>;
String _$readerSettingsNotifierHash() =>
    r'a5cdd04a84caf3cc35bc0b51d21edd44beecffbd';

/// See also [ReaderSettingsNotifier].
@ProviderFor(ReaderSettingsNotifier)
final readerSettingsNotifierProvider = AutoDisposeNotifierProvider<
    ReaderSettingsNotifier, ReaderSettings>.internal(
  ReaderSettingsNotifier.new,
  name: r'readerSettingsNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$readerSettingsNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ReaderSettingsNotifier = AutoDisposeNotifier<ReaderSettings>;
String _$currentBookNotifierHash() =>
    r'2516d16ed285aec8a2203e72ea694f8bbad7db61';

/// See also [CurrentBookNotifier].
@ProviderFor(CurrentBookNotifier)
final currentBookNotifierProvider =
    AutoDisposeNotifierProvider<CurrentBookNotifier, BookEntity?>.internal(
  CurrentBookNotifier.new,
  name: r'currentBookNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentBookNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CurrentBookNotifier = AutoDisposeNotifier<BookEntity?>;
String _$bookmarksNotifierHash() => r'49da9b36247a93ef17dfa51475cdc22adff01bcf';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$BookmarksNotifier
    extends BuildlessAutoDisposeAsyncNotifier<List<BookmarkEntity>> {
  late final int bookId;

  FutureOr<List<BookmarkEntity>> build(
    int bookId,
  );
}

/// See also [BookmarksNotifier].
@ProviderFor(BookmarksNotifier)
const bookmarksNotifierProvider = BookmarksNotifierFamily();

/// See also [BookmarksNotifier].
class BookmarksNotifierFamily extends Family<AsyncValue<List<BookmarkEntity>>> {
  /// See also [BookmarksNotifier].
  const BookmarksNotifierFamily();

  /// See also [BookmarksNotifier].
  BookmarksNotifierProvider call(
    int bookId,
  ) {
    return BookmarksNotifierProvider(
      bookId,
    );
  }

  @override
  BookmarksNotifierProvider getProviderOverride(
    covariant BookmarksNotifierProvider provider,
  ) {
    return call(
      provider.bookId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'bookmarksNotifierProvider';
}

/// See also [BookmarksNotifier].
class BookmarksNotifierProvider extends AutoDisposeAsyncNotifierProviderImpl<
    BookmarksNotifier, List<BookmarkEntity>> {
  /// See also [BookmarksNotifier].
  BookmarksNotifierProvider(
    int bookId,
  ) : this._internal(
          () => BookmarksNotifier()..bookId = bookId,
          from: bookmarksNotifierProvider,
          name: r'bookmarksNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bookmarksNotifierHash,
          dependencies: BookmarksNotifierFamily._dependencies,
          allTransitiveDependencies:
              BookmarksNotifierFamily._allTransitiveDependencies,
          bookId: bookId,
        );

  BookmarksNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.bookId,
  }) : super.internal();

  final int bookId;

  @override
  FutureOr<List<BookmarkEntity>> runNotifierBuild(
    covariant BookmarksNotifier notifier,
  ) {
    return notifier.build(
      bookId,
    );
  }

  @override
  Override overrideWith(BookmarksNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: BookmarksNotifierProvider._internal(
        () => create()..bookId = bookId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        bookId: bookId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<BookmarksNotifier,
      List<BookmarkEntity>> createElement() {
    return _BookmarksNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BookmarksNotifierProvider && other.bookId == bookId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, bookId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin BookmarksNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<List<BookmarkEntity>> {
  /// The parameter `bookId` of this provider.
  int get bookId;
}

class _BookmarksNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<BookmarksNotifier,
        List<BookmarkEntity>> with BookmarksNotifierRef {
  _BookmarksNotifierProviderElement(super.provider);

  @override
  int get bookId => (origin as BookmarksNotifierProvider).bookId;
}

String _$quotesNotifierHash() => r'c31b751b7b18ee4eaa1b0b3282402423f654ef0d';

abstract class _$QuotesNotifier
    extends BuildlessAutoDisposeAsyncNotifier<List<QuoteEntity>> {
  late final int bookId;

  FutureOr<List<QuoteEntity>> build(
    int bookId,
  );
}

/// See also [QuotesNotifier].
@ProviderFor(QuotesNotifier)
const quotesNotifierProvider = QuotesNotifierFamily();

/// See also [QuotesNotifier].
class QuotesNotifierFamily extends Family<AsyncValue<List<QuoteEntity>>> {
  /// See also [QuotesNotifier].
  const QuotesNotifierFamily();

  /// See also [QuotesNotifier].
  QuotesNotifierProvider call(
    int bookId,
  ) {
    return QuotesNotifierProvider(
      bookId,
    );
  }

  @override
  QuotesNotifierProvider getProviderOverride(
    covariant QuotesNotifierProvider provider,
  ) {
    return call(
      provider.bookId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'quotesNotifierProvider';
}

/// See also [QuotesNotifier].
class QuotesNotifierProvider extends AutoDisposeAsyncNotifierProviderImpl<
    QuotesNotifier, List<QuoteEntity>> {
  /// See also [QuotesNotifier].
  QuotesNotifierProvider(
    int bookId,
  ) : this._internal(
          () => QuotesNotifier()..bookId = bookId,
          from: quotesNotifierProvider,
          name: r'quotesNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$quotesNotifierHash,
          dependencies: QuotesNotifierFamily._dependencies,
          allTransitiveDependencies:
              QuotesNotifierFamily._allTransitiveDependencies,
          bookId: bookId,
        );

  QuotesNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.bookId,
  }) : super.internal();

  final int bookId;

  @override
  FutureOr<List<QuoteEntity>> runNotifierBuild(
    covariant QuotesNotifier notifier,
  ) {
    return notifier.build(
      bookId,
    );
  }

  @override
  Override overrideWith(QuotesNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: QuotesNotifierProvider._internal(
        () => create()..bookId = bookId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        bookId: bookId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<QuotesNotifier, List<QuoteEntity>>
      createElement() {
    return _QuotesNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is QuotesNotifierProvider && other.bookId == bookId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, bookId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin QuotesNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<List<QuoteEntity>> {
  /// The parameter `bookId` of this provider.
  int get bookId;
}

class _QuotesNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<QuotesNotifier,
        List<QuoteEntity>> with QuotesNotifierRef {
  _QuotesNotifierProviderElement(super.provider);

  @override
  int get bookId => (origin as QuotesNotifierProvider).bookId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package

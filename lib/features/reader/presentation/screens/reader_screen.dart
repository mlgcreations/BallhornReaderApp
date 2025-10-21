import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pdfrx/pdfrx.dart';
import 'package:epub_view/epub_view.dart';
import '../../../../core/providers/app_providers.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../reader/domain/entities/book_entity.dart';

class ReaderScreen extends ConsumerStatefulWidget {
  const ReaderScreen({super.key});

  @override
  ConsumerState<ReaderScreen> createState() => _ReaderScreenState();
}

class _ReaderScreenState extends ConsumerState<ReaderScreen> {
  EpubController? _epubController;
  int _currentPage = 1;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    final currentBook = ref.read(currentBookNotifierProvider);
    print('=== ReaderScreen initState ===');
    print('Libro actual: ${currentBook?.title}');
    print('Tipo: ${currentBook?.fileType}');
    print('Ruta: ${currentBook?.filePath}');
    
    if (currentBook?.fileType == BookType.epub) {
      _loadEpub(currentBook!);
    }
  }

  Future<void> _loadEpub(BookEntity book) async {
    try {
      print('Cargando EPUB...');
      final file = File(book.filePath);
      final bytes = await file.readAsBytes();
      final epubBook = await EpubDocument.openData(bytes);
      
      if (mounted) {
        setState(() {
          _epubController = EpubController(document: Future.value(epubBook));
        });
        print('EPUB cargado exitosamente');
      }
    } catch (e, stackTrace) {
      print('ERROR cargando EPUB: $e');
      print('StackTrace: $stackTrace');
      if (mounted) {
        setState(() {
          _errorMessage = 'Error al cargar EPUB: $e';
        });
      }
    }
  }

  @override
  void dispose() {
    _epubController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final currentBook = ref.watch(currentBookNotifierProvider);
    final settings = ref.watch(readerSettingsNotifierProvider);
    final themeColors = ReaderThemeColors.fromTheme(settings.theme);

    print('=== ReaderScreen build ===');
    print('currentBook: ${currentBook?.title}');

    if (currentBook == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Lector')),
        body: const Center(child: Text('No hay libro seleccionado')),
      );
    }

    if (_errorMessage != null) {
      return Scaffold(
        appBar: AppBar(
          title: Text(currentBook.title),
          backgroundColor: themeColors.background,
          foregroundColor: themeColors.text,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error, size: 60, color: Colors.red),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  _errorMessage!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.red),
                ),
              ),
              ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Volver'),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: themeColors.background,
      appBar: AppBar(
        backgroundColor: themeColors.background,
        foregroundColor: themeColors.text,
        title: Text(
          currentBook.title,
          style: TextStyle(color: themeColors.text),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => _showSettingsDialog(context),
            tooltip: 'Configuración',
          ),
        ],
      ),
      body: currentBook.fileType == BookType.pdf
          ? _buildPdfReader(currentBook, themeColors)
          : _buildEpubReader(currentBook, themeColors),
    );
  }

  Widget _buildPdfReader(BookEntity book, ReaderThemeColors themeColors) {
    print('=== Construyendo PDF reader ===');
    print('Ruta del archivo: ${book.filePath}');
    
    // Verificar que el archivo existe
    final file = File(book.filePath);
    if (!file.existsSync()) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error, size: 60, color: Colors.red),
            const SizedBox(height: 16),
            const Text('El archivo no existe'),
            const SizedBox(height: 8),
            Text('Ruta: ${book.filePath}'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Volver'),
            ),
          ],
        ),
      );
    }

    print('Archivo existe, creando PdfViewer...');

    return PdfViewer.file(
      book.filePath,
      params: PdfViewerParams(
        backgroundColor: themeColors.background,
        loadingBannerBuilder: (context, bytesDownloaded, totalBytes) {
          return const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
                SizedBox(height: 16),
                Text('Cargando PDF...'),
              ],
            ),
          );
        },
        errorBannerBuilder: (context, error, stackTrace, documentRef) {
          print('ERROR en PdfViewer: $error');
          print('StackTrace: $stackTrace');
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.error, size: 60, color: Colors.red),
                const SizedBox(height: 16),
                const Text('Error al cargar el PDF'),
                const SizedBox(height: 8),
                Text('$error'),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('Volver'),
                ),
              ],
            ),
          );
        },
        onPageChanged: (page) {
          print('Página cambiada a: $page');
          if (page != null) {
            setState(() {
              _currentPage = page;
            });
            ref.read(currentBookNotifierProvider.notifier).updateProgress(page);
          }
        },
      ),
    );
  }

  Widget _buildEpubReader(BookEntity book, ReaderThemeColors themeColors) {
    if (_epubController == null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(color: themeColors.text),
            const SizedBox(height: 16),
            Text(
              'Cargando libro...',
              style: TextStyle(color: themeColors.text),
            ),
          ],
        ),
      );
    }

    return EpubView(
      controller: _epubController!,
      builders: EpubViewBuilders<DefaultBuilderOptions>(
        options: const DefaultBuilderOptions(),
        chapterDividerBuilder: (_) => const Divider(height: 1),
      ),
    );
  }

  void _showSettingsDialog(BuildContext context) {
    final settings = ref.read(readerSettingsNotifierProvider);
    
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Configuración de lectura'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Tema de lectura:'),
            const SizedBox(height: 8),
            SegmentedButton<ReaderTheme>(
              segments: const [
                ButtonSegment(
                  value: ReaderTheme.normal,
                  label: Text('Normal'),
                ),
                ButtonSegment(
                  value: ReaderTheme.sepia,
                  label: Text('Sepia'),
                ),
                ButtonSegment(
                  value: ReaderTheme.night,
                  label: Text('Noche'),
                ),
              ],
              selected: {settings.theme},
              onSelectionChanged: (Set<ReaderTheme> newSelection) {
                ref
                    .read(readerSettingsNotifierProvider.notifier)
                    .setTheme(newSelection.first);
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cerrar'),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/widgets.dart';

import '../data/receipt_image_store.dart';
import '../services/ocr_service.dart';
import '../services/receipt_parser.dart';
import '../state/expense_store.dart';

/// Lightweight dependency injection: exposes the store (and rebuilds
/// dependents when it notifies) plus the stateless services.
class AppScope extends InheritedNotifier<ExpenseStore> {
  const AppScope({
    super.key,
    required ExpenseStore store,
    required this.images,
    required this.ocr,
    this.parser = const ReceiptParser(),
    required super.child,
  }) : super(notifier: store);

  final ReceiptImageStore images;
  final OcrService ocr;
  final ReceiptParser parser;

  ExpenseStore get store => notifier!;

  /// Subscribes the caller to store changes.
  static AppScope of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<AppScope>()!;

  /// Reads services without subscribing (for callbacks).
  static AppScope read(BuildContext context) =>
      context.getInheritedWidgetOfExactType<AppScope>()!;
}

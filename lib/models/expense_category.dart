import 'package:flutter/material.dart';

/// The five spending buckets required by the specification.
enum ExpenseCategory {
  food('Food', Icons.restaurant_rounded, Color(0xFFFF8A65)),
  study('Study', Icons.menu_book_rounded, Color(0xFF4FC3F7)),
  travel('Travel', Icons.directions_bus_rounded, Color(0xFF66BB6A)),
  gear('Gear', Icons.headphones_rounded, Color(0xFFAB47BC)),
  entertainment('Entertainment', Icons.movie_rounded, Color(0xFFFFCA28));

  const ExpenseCategory(this.label, this.icon, this.color);

  final String label;
  final IconData icon;
  final Color color;

  static ExpenseCategory fromName(String? name) => ExpenseCategory.values
      .firstWhere((c) => c.name == name, orElse: () => ExpenseCategory.food);
}

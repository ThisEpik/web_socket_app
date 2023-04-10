import 'package:flutter/material.dart';

abstract class CustomSnackBar {
  static Future<void> show(
    BuildContext context,
    String title, {
    Color color = Colors.blue,
  }) async {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(title),
      backgroundColor: color,
    ));
  }
}

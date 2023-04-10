import 'package:flutter/material.dart';
import 'package:web_socket_app/ui/pages/home/home_page.dart';

void main() {
  runApp(const _WebSocketApp());
}

class _WebSocketApp extends StatelessWidget {
  const _WebSocketApp();

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_socket_app/ui/pages/home/home_page_service.dart';

class HomePageTextField extends StatelessWidget {
  const HomePageTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final HomePageService service = context.read();

    return Padding(
      padding: const EdgeInsets.all(20),
      child: TextField(
        decoration: const InputDecoration(hintText: 'Enter tha data'),
        controller: service.textFieldController,
      ),
    );
  }
}

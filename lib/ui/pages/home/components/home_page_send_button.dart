import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_socket_app/ui/pages/home/home_page_service.dart';

class HomePageSendButton extends StatelessWidget {
  const HomePageSendButton({super.key});

  @override
  Widget build(BuildContext context) {
    final HomePageService service = context.read();

    return ElevatedButton(
      onPressed: service.sendDataToWebSocket,
      child: const Text('Send data'),
    );
  }
}

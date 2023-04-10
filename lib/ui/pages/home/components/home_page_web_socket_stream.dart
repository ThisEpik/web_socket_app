import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_socket_app/ui/pages/home/home_page_service.dart';

class HomePageWebSocketStream extends StatelessWidget {
  const HomePageWebSocketStream({super.key});

  @override
  Widget build(BuildContext context) {
    final HomePageService service = context.watch<HomePageService>();

    return Text(
      'Data from server: \n${service.streamData}',
      style: const TextStyle(fontSize: 20),
      textAlign: TextAlign.center,
    );
  }
}

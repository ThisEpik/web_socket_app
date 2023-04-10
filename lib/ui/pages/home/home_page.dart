import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_socket_app/ui/pages/home/home_page_service.dart';

import 'components/components.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomePageService(context: context),
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SizedBox(width: double.infinity),
            HomePageHintText(),
            HomePageWebSocketStream(),
            HomePageTextField(),
            HomePageSendButton(),
          ],
        ),
      ),
    );
  }
}

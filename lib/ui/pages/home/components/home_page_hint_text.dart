import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_socket_app/data/global_constants/api_urls.dart';
import 'package:web_socket_app/ui/pages/home/home_page_service.dart';

class HomePageHintText extends StatelessWidget {
  const HomePageHintText({super.key});

  @override
  Widget build(BuildContext context) {
    final HomePageService service = context.read<HomePageService>();

    return GestureDetector(
      onTap: service.copyUrlToClipBoard,
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Text(
          'Click to copy to clipboard \n ${ApiUrls.baseUrl}',
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

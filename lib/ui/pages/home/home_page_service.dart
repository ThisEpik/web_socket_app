import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import 'package:web_socket_app/data/global_constants/api_urls.dart';
import 'package:web_socket_app/ui/widgets/custom_snack_bar.dart';

class HomePageService extends ChangeNotifier {
  final BuildContext context;

  final WebSocketChannel channel =
      WebSocketChannel.connect(Uri.parse(ApiUrls.baseUrl));
  final TextEditingController textFieldController = TextEditingController();

  String _streamData = 'No data';

  String get streamData => _streamData;

  HomePageService({required this.context}) {
    channel.stream.listen((event) {
      _streamData = event.toString();
      notifyListeners();
    });
  }

  void copyUrlToClipBoard() {
    Clipboard.setData(const ClipboardData(text: ApiUrls.baseUrl));
    CustomSnackBar.show(context, 'Copied to clipboard');
  }

  void sendDataToWebSocket() {
    channel.sink.add(textFieldController.text);
  }
}

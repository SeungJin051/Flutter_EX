import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController? controller;
  HomeScreen({super.key});

  final homeUrl = 'https://seungjin051.github.io/Cloud_Computing_Blog/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SeungJin! AppBar'),
        centerTitle: true,
        backgroundColor: Colors.black38,
        actions: [
          IconButton(
            onPressed: () {
              if (controller == null) {
                return;
              }

              controller!.loadUrl(homeUrl);
            },
            icon: const Icon(Icons.home),
          ),
        ],
      ),
      body: SafeArea(
        bottom: false,
        child: WebView(
          onWebViewCreated: (WebViewController controller) {
            this.controller = controller;
          },
          initialUrl: homeUrl,
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}

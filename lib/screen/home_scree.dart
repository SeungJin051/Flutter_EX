import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

final homeUrl =
    Uri.parse('https://seungjin051.github.io/Cloud_Computing_Blog/');

class HomeScreen extends StatelessWidget {
  // Controller 선언
  WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(homeUrl);
  HomeScreen({super.key});

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
              controller.loadRequest(homeUrl);
            },
            icon: const Icon(Icons.home),
          ),
        ],
      ),
      body: SafeArea(
        bottom: false,
        child: WebViewWidget(
          controller: controller,
        ),
        // WebView(
        //   onWebViewCreated: (WebViewController controller) {
        //     this.controller = controller;
        //   },
        //   initialUrl: homeUrl,
        //   javascriptMode: JavascriptMode.unrestricted,
        // ),
      ),
    );
  }
}

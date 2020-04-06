import 'dart:async';
import 'dart:ui';

import 'package:enkel/model/banner.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'package:flutter/material.dart';
import 'package:flutter_lottie/flutter_lottie.dart';

// https://www.jianshu.com/p/c0aee0207be1

class Webview extends StatefulWidget {
  final Category item;
  Webview(this.item);
  @override
  _WebviewState createState() => _WebviewState(this.item);
}

class _WebviewState extends State<Webview> {
  final Category item;
  _WebviewState(this.item);

  double _opacity = 1.0;

  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  JavascriptChannel _jsBridge(BuildContext context) => JavascriptChannel(
        name: 'lkMsg', // 与h5 端的一致 不然收不到消息
        onMessageReceived: (JavascriptMessage message) async {
          print(message.message);
        },
      );

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AppBar appBar = AppBar(
      title: Text(this.item.title),
    );
    return Scaffold(
      appBar: appBar,
      body: Stack(
        children: <Widget>[
          new WebView(
            initialUrl: this.item.url,
            userAgent: 'Enkel/1.0.0',
            javascriptMode: JavascriptMode.unrestricted,
            javascriptChannels: <JavascriptChannel>[
              _jsBridge(context) // 与h5 通信
            ].toSet(),
            onWebViewCreated: (WebViewController webViewController) {
              print('webview created');
              setState(() {
                _opacity = 1.0;
              });
              _controller.complete(webViewController);
            },
            navigationDelegate: (NavigationRequest request) {
              if (request.url.startsWith('https://www.youtube.com/')) {
                print('blocking navigation to $request}');
                return NavigationDecision.prevent;
              }
              print('allowing navigation to $request');
              return NavigationDecision.navigate;
            },
            onPageStarted: (String url) {
              print('Page started loading: $url');
            },
            onPageFinished: (String url) {
              print('Page finished loading: $url');

              Future.delayed(Duration(milliseconds: 1500), () {
                setState(() {
                  _opacity = 0.0;
                });
              });
            },
            gestureNavigationEnabled: true,
          ),
          Positioned(
            left: 0,
            top: 0,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height -
                appBar.preferredSize.height -
                MediaQueryData.fromWindow(window).padding.top,
            child: AnimatedOpacity(
              opacity: _opacity,
              duration: Duration(milliseconds: 500),
              curve: Curves.elasticInOut,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height -
                    appBar.preferredSize.height -
                    MediaQueryData.fromWindow(window).padding.top,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(35, 40, 59, 1),
                ),
                child: LottieView.fromURL(
                  onViewCreated: (_) {},
                  // filePath: 'assets/lottie/loading.json',
                  url:
                      'https://assets1.lottiefiles.com/packages/lf20_KKD7Bh.json',
                  autoPlay: true,
                  loop: true,
                  reverse: false,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

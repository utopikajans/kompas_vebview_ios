import 'package:flutter/material.dart';
import 'enable_javascript_task-2.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KOMPAS',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EnableJavacriptWebView(),
    );
  }
}

// bir diğer yöntem
/*import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
void main() {
  runApp(KompasAnasayfa());
}
class KompasAnasayfa extends StatefulWidget {
  @override
  _KompasSepetAnasayfaState createState() => _KompasSepetAnasayfaState();
}

class _KompasSepetAnasayfaState extends State<KompasAnasayfa> {
  Completer<WebViewController> _controller = Completer<WebViewController>();
  final Set<String> _favorites = Set<String>();
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        body: WebView(
            javascriptMode: JavascriptMode.unrestricted,

          initialUrl: 'https://erp.kompas.com.tr/customer/giris-yap',
          onWebViewCreated: (WebViewController webViewController) {
            _controller.complete(webViewController);
          },
          gestureRecognizers: Set()
    ..add(Factory<VerticalDragGestureRecognizer>(
      () => VerticalDragGestureRecognizer())),
        ),
      ),
    );
  }
}*/
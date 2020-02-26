import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:webview_flutter/webview_flutter.dart';

class EnableJavacriptWebView extends StatefulWidget {
  @override
  EnableJavacriptWebViewState createState() {
    return new EnableJavacriptWebViewState();
  }
}

class EnableJavacriptWebViewState extends State<EnableJavacriptWebView> {
  bool _isJSEnabled = true;

  _onChanged() {
    setState(() {
      _isJSEnabled = !_isJSEnabled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          WebView(
            initialUrl: 'https://erp.kompas.com.tr/customer/giris-yap',
            javascriptMode: _isJSEnabled
                ? JavascriptMode.unrestricted
                : JavascriptMode.unrestricted,
          ),
        ],
      ),
    );
  }
}
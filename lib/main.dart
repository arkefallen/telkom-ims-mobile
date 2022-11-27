import 'package:flutter/material.dart';
import 'package:umkm_wview/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: NavWebview(),
    );
  }
}
// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:umkm_wview/nav_webview/navigation_control.dart';
// import 'package:umkm_wview/nav_webview/web_view_stack.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// void main() {
//   runApp(
//     const MaterialApp(
//       home: WebViewApp(),
//     ),
//   );
// }

// class WebViewApp extends StatefulWidget {
//   const WebViewApp({key});

//   @override
//   State<WebViewApp> createState() => _WebViewAppState();
// }

// class _WebViewAppState extends State<WebViewApp> {
//   final controller = Completer<WebViewController>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Flutter WebView'),
//         actions: [
//           NavigationControls(controller: controller),
//         ],
//       ),
//       body: WebViewStack(controller: controller),
//     );
//   }
// }

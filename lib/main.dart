import 'package:flutter/material.dart';
import 'package:qr_code/qr_code/pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "QR Code Scanner and Generator",
        home: HomePage());
  }
}

import 'package:flutter/material.dart';
import 'package:qr_code/qr_code/generate_qrcode/generate_qrcode.dart';
import 'package:qr_code/qr_code/scan_qrcode/scan_qrcode.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'QR Code Scanner and Generator',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const ScanQrcode()));
                  });
                },
                child: const Text("Scan QR Code")),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => const GenerateQrcode()));
                  });
                },
                child: const Text("Generate QR Code"))
          ],
        ),
      ),
    );
  }
}

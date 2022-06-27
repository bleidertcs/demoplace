import 'package:flutter/material.dart';

class QrCodePage extends StatelessWidget {
  const QrCodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Generar Codigo QR',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Tu Informacion Medica',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Center(
            child: InkWell(
              onTap: () {},
              child: Image.asset(
                'assets/codigo_qr.png',
                height: 300,
                width: 300,
              ),
            ),
          )
        ],
      ),
    );
  }
}

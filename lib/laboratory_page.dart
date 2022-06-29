import 'package:flutter/material.dart';

class LaboratoryPage extends StatelessWidget {
  const LaboratoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Laboratorio'),
      ),
      body: Image.asset('assets/laboratorio.png'),
    );
  }
}

import 'package:flutter/material.dart';

class ApsPage extends StatelessWidget {
  const ApsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('APS'),
      ),
      body: Image.asset('assets/aps.png'),
    );
  }
}

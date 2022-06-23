import 'package:flutter/material.dart';

class PharmacyPage extends StatelessWidget {
  const PharmacyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Farmacia'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            color: Colors.lightBlue,
          ),
        ],
      ),
    );
  }
}

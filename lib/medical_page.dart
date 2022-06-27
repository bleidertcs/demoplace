import 'package:farmarketplace/widgets/productCard.dart';
import 'package:flutter/material.dart';

class MedicalPage extends StatelessWidget {
  const MedicalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Atencion Medica'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          ProductCard(),
        ],
      ),
    );
  }
}

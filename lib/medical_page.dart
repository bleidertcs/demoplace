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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            ProductCard(
              image: 'assets/botella.jpg',
              productName: 'Botella',
              productPrice: 'Bs. 10.000',
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MedicalPage extends StatelessWidget {
  const MedicalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Atencion Medica'),
      ),
      body: Image.asset('assets/atencion_medica.png'),
    );
  }

/*
  Widget gridView(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 20,
      children: List.generate(10, (index) {
        return const ProductCard(
          image: 'assets/botella.jpg',
          productName: 'Botella',
          productPrice: 'Bs. 10.000',
        );
      }),
    );
  }
  */
}

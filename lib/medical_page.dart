import 'package:flutter/material.dart';

class MedicalPage extends StatelessWidget {
  const MedicalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Atencion Medica',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text(
            'Atencion Medica en Linea',
            style: TextStyle(
              fontSize: 30,
              color: Color.fromARGB(255, 110, 198, 209),
            ),
          ),
          Image.asset(
            'assets/atencion_medica2.jpeg',
            width: double.maxFinite,
          ),
        ],
      ),
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

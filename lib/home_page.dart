import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECF3F9),
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.white, letterSpacing: 1.5),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              CartButton(
                icon: FontAwesomeIcons.cartPlus,
                text: 'Farmacia',
                color: Color.fromARGB(255, 110, 198, 209),
              ),
              CartButton(
                icon: FontAwesomeIcons.userDoctor,
                text: 'Atencion Medica',
                color: Color.fromARGB(255, 39, 45, 99),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              CartButton(
                icon: FontAwesomeIcons.houseChimneyMedical,
                text: 'APS',
                color: Color.fromARGB(255, 147, 200, 61),
              ),
              CartButton(
                icon: FontAwesomeIcons.flaskVial,
                text: 'Laboratorio',
                color: Color.fromARGB(255, 131, 141, 255),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CartButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  const CartButton({
    required this.icon,
    required this.text,
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(color: color),
          vertical: BorderSide(color: color),
        ),
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(icon),
            iconSize: 60,
            color: Colors.white,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:farmarketplace/aps_page.dart';
import 'package:farmarketplace/laboratory_page.dart';
import 'package:farmarketplace/medical_page.dart';
import 'package:farmarketplace/pharmacy_home_page.dart';
import 'package:farmarketplace/qrcode_page.dart';
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
            children: [
              CartButton(
                icon: FontAwesomeIcons.cartPlus,
                text: 'Farmacia',
                color: const Color.fromARGB(255, 110, 198, 209),
                onpress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const PharmacyPage(),
                    ),
                  );
                },
              ),
              CartButton(
                icon: FontAwesomeIcons.userDoctor,
                text: 'Atencion Medica',
                color: const Color.fromARGB(255, 39, 45, 99),
                onpress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const MedicalPage(),
                    ),
                  );
                },
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CartButton(
                icon: FontAwesomeIcons.houseChimneyMedical,
                text: 'APS',
                color: const Color.fromARGB(255, 147, 200, 61),
                onpress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const ApsPage(),
                    ),
                  );
                },
              ),
              CartButton(
                icon: FontAwesomeIcons.flaskVial,
                text: 'Laboratorio',
                color: const Color.fromARGB(255, 131, 141, 255),
                onpress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const LaboratoryPage(),
                    ),
                  );
                },
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              'Generar Codigo QR',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 20),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const QrCodePage(),
                  ),
                );
              },
              iconSize: 80,
              icon: const Icon(
                Icons.qr_code_2,
                size: 100,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CartButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  final void Function()? onpress;

  const CartButton({
    required this.icon,
    required this.text,
    required this.color,
    required this.onpress,
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
      child: InkWell(
        onTap: onpress,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: onpress,
              icon: Icon(icon),
              iconSize: 60,
              color: Colors.white,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: deprecated_member_use

import 'package:farmarketplace/background.dart';
import 'package:farmarketplace/home_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: key,
        child: Background(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 10),
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.account_box,
                    size: 100,
                    color: Color(0xff66c7d3),
                  ),
                  SizedBox(height: 120),
                  CustomInput(
                    msgHint: 'Usuario',
                    isObscure: false,
                  ),
                  SizedBox(height: 20),
                  CustomInput(
                    msgHint: 'Contraseña',
                    isObscure: true,
                  ),
                  SizedBox(height: 20),
                  LoginButton(),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomInput extends StatelessWidget {
  final String msgHint;
  final bool isObscure;
  const CustomInput({
    Key? key,
    required this.msgHint,
    required this.isObscure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        textInputAction: TextInputAction.next,
        keyboardType:
            isObscure ? TextInputType.visiblePassword : TextInputType.text,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black, width: 2),
            borderRadius: BorderRadius.circular(30),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black, width: 2),
            borderRadius: BorderRadius.circular(30),
          ),
          errorStyle: const TextStyle(
            color: Colors.red,
            fontSize: 14,
          ),
          prefixIcon: const Icon(
            Icons.lock,
            color: Colors.black54,
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(30),
          ),
          hintText: msgHint,
          hintStyle: const TextStyle(color: Colors.black45),
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: IconButton(
            onPressed: () {},
            iconSize: 60,
            icon: const Icon(
              Icons.fingerprint,
              size: 60,
            ),
          ),
        ),
        Container(
          alignment: Alignment.bottomRight,
          margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          child: ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const HomePage(),
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: const Color.fromARGB(255, 39, 45, 99),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80.0)),
              padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
            ),
            child: const Text(
              "LOGIN",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

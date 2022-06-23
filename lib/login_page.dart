// ignore_for_file: deprecated_member_use

import 'package:farmarketplace/background.dart';
import 'package:farmarketplace/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //backgroundColor: Theme.of(context).backgroundColor,
        body: Background(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Icon(Icons.account_box, size: 100, color: Color(0xff66c7d3)),
                SizedBox(
                  height: 120,
                ),
                CustomInput(
                  msgHint: 'Usuario',
                  isObscure: false,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomInput(
                  msgHint: 'Contraseña',
                  isObscure: true,
                ),
                SizedBox(
                  height: 20,
                ),
                LoginButton()
              ],
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
    return Container(
      alignment: Alignment.bottomRight,
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: RaisedButton(
        onPressed: () => {},
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
        textColor: Colors.white,
        padding: const EdgeInsets.all(0),
        child: Container(
          alignment: Alignment.center,
          height: 50.0,
          width: size.width * 0.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80.0),
          ),
          padding: const EdgeInsets.all(0),
          child: const Text(
            "LOGIN",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

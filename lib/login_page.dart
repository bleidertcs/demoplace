import 'package:farmarketplace/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(
              Icons.account_box,
              size: 100,
            ),
            const CustomInput(
              msgHint: 'Usuario',
              isObscure: false,
            ),
            const CustomInput(
              msgHint: 'Contraseña',
              isObscure: true,
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const HomePage(),
                ),
              ),
              child: const Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: const Color(0xff272d63),
              ),
            ),
          ],
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

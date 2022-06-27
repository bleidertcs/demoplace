import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductCard extends StatelessWidget {
  ProductCard({Key? key, this.image, this.productName, this.productPrice})
      : super(key: key);

  String? image;
  String? productName;
  String? productPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(5.0),
        height: 250,
        width: 180,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Stack(children: [
          const Positioned(
              top: 15,
              right: 10,
              child: Icon(
                FontAwesomeIcons.heart,
                color: Color(0xff51b9cb),
                size: 30,
              )),
          const Positioned(
              bottom: 20,
              right: 10,
              child: Icon(
                Icons.add_circle,
                color: Color(0xff51b9cb),
                size: 35,
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _productImage(),
                _productName('name'),
                _productPrice('price'),
                _productStars()
              ],
            ),
          ),
        ]));
  }

  Widget _productImage() {
    return const Image(
      image: AssetImage('assets/botella.jpg'),
      height: 140,
    );
  }

  Widget _productPrice(String price) {
    return const Text(
      'Bs. 100.00',
      style: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget _productName(String name) {
    return const Text(
      'Shoes',
      style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          letterSpacing: 1.2,
          color: Colors.black38),
    );
  }

  Widget _productStars() {
    return Row(
      children: const [
        Icon(
          Icons.star,
          color: Colors.yellow,
          size: 20,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow,
          size: 20,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow,
          size: 20,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow,
          size: 20,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow,
          size: 20,
        )
      ],
    );
  }
}

import 'package:farmarketplace/product_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.image,
    this.productName,
    this.productPrice,
  }) : super(key: key);

  final String? image;
  final String? productName;
  final String? productPrice;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => const ProductView(),
          ),
        );
      },
      child: Container(
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
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Stack(children: [
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
                  ProductImage(
                    image: image,
                  ),
                  const ProductName(),
                  const ProductPrice(),
                  const ProductStars()
                ],
              ),
            ),
            const Positioned(
                top: 15,
                right: 10,
                child: Icon(
                  FontAwesomeIcons.heart,
                  color: Color(0xff51b9cb),
                  size: 30,
                )),
          ])),
    );
  }
}

class ProductImage extends StatelessWidget {
  const ProductImage({
    Key? key,
    this.image,
  }) : super(key: key);
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(image!),
      height: 120,
    );
  }
}

class ProductPrice extends StatelessWidget {
  const ProductPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Bs. 100.00',
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

class ProductName extends StatelessWidget {
  const ProductName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Shoes',
      style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          letterSpacing: 1.2,
          color: Colors.black38),
    );
  }
}

class ProductStars extends StatelessWidget {
  const ProductStars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.star,
          color: Colors.yellow,
          size: 18,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow,
          size: 18,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow,
          size: 18,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow,
          size: 18,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow,
          size: 18,
        )
      ],
    );
  }
}

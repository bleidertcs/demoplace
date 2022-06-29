import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductView extends StatelessWidget {
  const ProductView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Column(
          children: [
            Image(
              image: const AssetImage('assets/botella.jpg'),
              width: MediaQuery.of(context).size.width,
              height: 550,
            ),
          ],
        ),
        const Positioned(
            top: 75,
            right: 20,
            child: Icon(
              FontAwesomeIcons.heart,
              color: Color(0xff51b9cb),
              size: 40,
            )),
        Positioned(
            bottom: 0,
            child: Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: const Color(0xff51b9cb),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 15,
                        spreadRadius: 5)
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(17.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    stars(),
                    const SizedBox(height: 20),
                    const Expanded(
                      child: Text('Botella',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                              letterSpacing: 1.5)),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industr',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        )),
                    const SizedBox(height: 20),
                    const Text('Bs. 10.000',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 1.5)),
                    const SizedBox(height: 20),
                    Center(
                      child: InkWell(
                        child: Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width - 50,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Text(
                                'Añadir al carrito',
                                style: TextStyle(
                                    color: Color(0xff51b9cb),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800,
                                    letterSpacing: 1.5),
                              ),
                              Icon(
                                Icons.shopping_cart,
                                size: 30,
                                color: Color(0xff51b9cb),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ))
      ]),
    );
  }

  Widget stars() {
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

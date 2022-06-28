import 'package:farmarketplace/widgets/productCard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'shopping_page.dart';

class PharmacyPage extends StatelessWidget {
  const PharmacyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pharmacy',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              FontAwesomeIcons.barcode,
              size: 30,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Form(
            key: key,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  suffixIcon: const Icon(Icons.search),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  errorStyle: const TextStyle(
                    color: Colors.red,
                    fontSize: 14,
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: 'Search',
                  hintStyle: const TextStyle(color: Colors.black45),
                ),
              ),
            ),
          ),
          // const Text(
          //   'Categorias',
          //   style: TextStyle(
          //     fontSize: 20,
          //     fontWeight: FontWeight.bold,
          //   ),
          // ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80.0),
                  ),
                  child: const Text(
                    'Todo',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                      color: Colors.black38,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  'Cuidado Personal',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 23,
                    color: Color(0xff51b9cb),
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  'Dolor ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 18,
                    color: Colors.black38,
                  ),
                ),
                const SizedBox(width: 5),
                //const Text(
                //  'Pastillas',
                //  textAlign: TextAlign.center,
                //  style: TextStyle(
                //    fontWeight: FontWeight.bold,
                //    fontSize: 16,
                //  ),
                //),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              ProductCard(
                image: 'assets/botella.jpg',
                productName: '',
                productPrice: '',
              ),
              ProductCard(
                image: 'assets/pharmacy1.jpg',
                productName: '',
                productPrice: '',
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              ProductCard(
                image: 'assets/pharmacy2.jpg',
                productName: '',
                productPrice: '',
              ),
              ProductCard(
                image: 'assets/pharmacy1.jpg',
                productName: '',
                productPrice: '',
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              ProductCard(
                image: 'assets/botella.jpg',
                productName: '',
                productPrice: '',
              ),
              ProductCard(
                image: 'assets/pharmacy2.jpg',
                productName: '',
                productPrice: '',
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              ProductCard(
                image: 'assets/botella.jpg',
                productName: '',
                productPrice: '',
              ),
              ProductCard(
                image: 'assets/botella.jpg',
                productName: '',
                productPrice: '',
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'heroFloating',
        key: key,
        onPressed: () {
          MaterialPageRoute(
            builder: (BuildContext context) => const ShoppingPage(),
          );
        },
        child: const Icon(
          Icons.shopping_cart,
          color: Colors.white,
        ),
      ),
    );
  }
}

class CardProduct extends StatelessWidget {
  const CardProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

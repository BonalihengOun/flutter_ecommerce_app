import 'package:flutter/material.dart';
import 'package:flutter_sneaker_shop_ecommerce/component/Recommend_Product.GridView.dart';
import 'package:flutter_sneaker_shop_ecommerce/constants/colors.dart';
import 'package:flutter_sneaker_shop_ecommerce/offer%20Banner/Recommend_Card.dart';

class Recommend_product extends StatefulWidget {
  const Recommend_product({super.key});

  @override
  State<Recommend_product> createState() => _Recommend_productState();
}

class _Recommend_productState extends State<Recommend_product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            splashRadius: 20,
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset(
              'lib/assets/pic/Left.png',
              color: Grey,
            ),
          ),
        ),
        titleSpacing: 5,
        title: Text(
          "Recommend Product",
          style: TextStyle(fontFamily: "NiraBold", fontSize: 16, color: Dark),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Ink(
              decoration: ShapeDecoration(
                color: Colors
                    .transparent, // Set the background color to transparent
                shape: CircleBorder(), // Customize the shape as needed
              ),
              child: IconButton(
                splashRadius: 18,
                onPressed: () {},
                icon: Image.asset('lib/assets/pic/iconNavBar/Search.png'),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Recommend(),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 30),
                            child: Recommend_Product(),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

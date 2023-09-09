import 'package:flutter/material.dart';
import 'package:flutter_sneaker_shop_ecommerce/component/Recommend_Product.GridView.dart';
import 'package:flutter_sneaker_shop_ecommerce/constants/colors.dart';

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
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 25),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'lib/assets/pic/Promotion 2.png',
                              height: 220,
                              width: 340,
                            ),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 0, top: 50, right: 40, bottom: 30),
                                child: Text(
                                  'Recommend \nProduct',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'NiraBold',
                                      letterSpacing: 0.5,
                                      color: Light),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 00, left: 20),
                                child: Text(
                                  'We Recommend the best for you',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'NiraRegular',
                                      letterSpacing: 0.5,
                                      color: Light),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Recommend_Product(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

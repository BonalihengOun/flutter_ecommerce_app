import 'package:flutter/material.dart';
import 'package:flutter_sneaker_shop_ecommerce/constants/colors.dart';
import 'package:flutter_sneaker_shop_ecommerce/offer%20Banner/Promotion_Card.dart';
import 'package:flutter_sneaker_shop_ecommerce/offer%20Banner/Recommend_Card.dart';
import 'package:flutter_sneaker_shop_ecommerce/offer%20Banner/Recommend_Product.dart';
import 'package:flutter_sneaker_shop_ecommerce/offer%20Banner/SuperFlashSale.dart';

class Offer_screen extends StatefulWidget {
  const Offer_screen({super.key});

  @override
  State<Offer_screen> createState() => _Offer_screenState();
}

class _Offer_screenState extends State<Offer_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                  child: Text(
                    'Offer',
                    style: TextStyle(
                      fontFamily: 'NiraBold',
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Dark.withOpacity(0.1)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Center(
                        child: Container(
                            height: 650,
                            child:
                                Image.asset('lib/assets/pic/banner/NIKE.png')),
                      ),
                      Center(
                        child: Container(
                          width: 340,
                          height: 80,
                          margin: EdgeInsets.only(top: 30),
                          decoration: BoxDecoration(
                            color: Dark,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              'Use “MEGSL” Cupon For \nGet 90%off',
                              style: TextStyle(
                                  fontFamily: "NiraBold",
                                  color: Light,
                                  letterSpacing: 0.5),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, top: 130),
                          child: Column(
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SuperFlashSale(),
                                      ),
                                    );
                                  },
                                  child: Promotion()),
                              Recommend(),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 450, left: 60),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Recommend_product(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 0,

                            primary: Colors
                                .black, // Change the button's background color
                            onPrimary: Colors.white, // Change the text color
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  14.0), // Set the border radius
                            ),
                            minimumSize:
                                Size(96, 35), // Set the width and height
                          ),
                          child: Text("Go now"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

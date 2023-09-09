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
                      Image.asset(''),
                      Center(
                        child: Container(
                          width: 340,
                          height: 80,
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

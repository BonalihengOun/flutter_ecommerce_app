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
                  border: Border.all(width: 1, color: Light),
                ),
              ),
              SizedBox(
                height: 20,
              ),
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
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 35),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Promotion(
                      text: '\tSuper Flash Sale\n 50% off',
                      image: 'lib/assets/pic/Promotion 1.png',
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => SuperFlashSale(),
                        ));
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 35),
                    child: Recommend(
                      text: '90% off Super Mega \nSale',
                      image: 'lib/assets/pic/Promotion 2.png',
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => Recommend_product(),
                        ));
                      },
                    ),
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

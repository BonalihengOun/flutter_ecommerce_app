

import 'package:flutter/material.dart';
import 'package:flutter_sneaker_shop_ecommerce/Widegt_Component/CountDownDiscount.dart';
import 'package:flutter_sneaker_shop_ecommerce/constants/colors.dart';

class Recommend extends StatefulWidget {
  const Recommend({
    super.key,
  });

  @override
  State<Recommend> createState() => _RecommendState();
}

class _RecommendState extends State<Recommend> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        child: Stack(
          children: [
            Container(
              height: 180,
              width: 330,
              decoration: BoxDecoration(
                color: Color(0xffBB801C),
                borderRadius: BorderRadius.circular(18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Recommend',
                    style: TextStyle(
                        fontFamily: 'NiraBold', fontSize: 28, color: Light),
                  ),
                  Text(
                    '\tWe recommend the best for you',
                    style: TextStyle(
                      fontFamily: 'NiraRegular',
                      fontSize: 10,
                      color: Light.withOpacity(0.9),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: 260.0,
                height: 220,
                margin: EdgeInsets.only(
                  left: 110,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'lib/assets/pic/banner/Yellow Shoe.png',
                      ),
                      fit: BoxFit.fitWidth),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

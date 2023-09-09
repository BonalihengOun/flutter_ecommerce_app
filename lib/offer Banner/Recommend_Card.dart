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
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: [
            Container(
              height: 200,
              width: 360,
              decoration: BoxDecoration(
                color: Color(0xffBB801C),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Recommmend',
                    style: TextStyle(
                        fontFamily: 'NiraBold', fontSize: 28, color: Light),
                  ),
                  Text(
                    ' Product for you',
                    style: TextStyle(
                      fontFamily: 'NiraRegular',
                      fontSize: 14,
                      color: Light.withOpacity(0.8),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Image.asset(
                'lib/assets/pic/banner/Yellow Shoe.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

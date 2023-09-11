import 'package:flutter/material.dart';
import 'package:flutter_sneaker_shop_ecommerce/Widegt_Component/CountDownDiscount.dart';
import 'package:flutter_sneaker_shop_ecommerce/constants/colors.dart';

class Promotion extends StatefulWidget {
  const Promotion({
    super.key,
  });

  @override
  State<Promotion> createState() => _Promotion_1State();
}

class _Promotion_1State extends State<Promotion> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        child: Stack(
          children: [
            Container(
              height: 170,
              width: 330,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 208, 208, 208),
                borderRadius: BorderRadius.circular(18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '50% ',
                        style: TextStyle(
                            fontFamily: 'NiraBold',
                            fontSize: 30,
                            color: Colors.black),
                      ),
                      Text(
                        'Discount',
                        style: TextStyle(
                            fontFamily: 'NiraBold',
                            fontSize: 19,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  Text(
                    'On your first purchase',
                    style: TextStyle(
                        fontFamily: 'NiraRegular',
                        fontSize: 14,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: 280,
                height: 185,
                margin: EdgeInsets.only(left: 80, top: 15),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'lib/assets/pic/banner/Green 1.png',
                      ),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

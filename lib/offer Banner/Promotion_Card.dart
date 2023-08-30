import 'package:flutter/material.dart';
import 'package:flutter_sneaker_shop_ecommerce/constants/colors.dart';

class Promotion extends StatefulWidget {
  const Promotion(
      {super.key,
      required this.image,
      required this.text,
      required this.onTap});
  final String image;
  final String text;
  final Function() onTap;

  @override
  State<Promotion> createState() => _Promotion_1State();
}

class _Promotion_1State extends State<Promotion> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                widget.image,
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30, top: 32, right: 110, bottom: 102),
                  child: Text(
                    widget.text,
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'NiraBold',
                        letterSpacing: 0.5,
                        color: Light),
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

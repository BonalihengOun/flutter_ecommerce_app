import 'package:flutter/material.dart';
import 'package:flutter_sneaker_shop_ecommerce/Widegt_Component/CountDownDiscount.dart';
import 'package:flutter_sneaker_shop_ecommerce/constants/colors.dart';

class Recommend_Card extends StatefulWidget {
  const Recommend_Card(
      {super.key,
      required this.image,
      required this.text,
      required this.onTap});
  final String image;
  final String text;
  final Function() onTap;

  @override
  State<Recommend_Card> createState() => _Recommend_CardState();
}

class _Recommend_CardState extends State<Recommend_Card> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
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
                widget.image,
                height: 220,
                width: 340,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 120, left: 35),
              child: CountdownTimerWidget(
                targetTime: DateTime.now().add(
                  Duration(hours: 0, minutes: 00, seconds: 1),
                ),
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
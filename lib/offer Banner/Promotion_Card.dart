import 'package:flutter/material.dart';
import 'package:flutter_sneaker_shop_ecommerce/Widegt_Component/CountDownDiscount.dart';
import 'package:flutter_sneaker_shop_ecommerce/constants/colors.dart';

class Promotion extends StatefulWidget {
  const Promotion({
    super.key,
    required this.image,
  });
  final String image;

  @override
  State<Promotion> createState() => _Promotion_1State();
}

class _Promotion_1State extends State<Promotion> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.amber,
                image: DecorationImage(
                    image: AssetImage(widget.image), fit: BoxFit.cover),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

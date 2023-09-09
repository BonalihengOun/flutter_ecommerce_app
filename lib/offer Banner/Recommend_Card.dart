import 'package:flutter/material.dart';
import 'package:flutter_sneaker_shop_ecommerce/Widegt_Component/CountDownDiscount.dart';
import 'package:flutter_sneaker_shop_ecommerce/constants/colors.dart';

class Recommend extends StatefulWidget {
  const Recommend({
    super.key,
    required this.image,
  });
  final String image;

  @override
  State<Recommend> createState() => _RecommendState();
}

class _RecommendState extends State<Recommend> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

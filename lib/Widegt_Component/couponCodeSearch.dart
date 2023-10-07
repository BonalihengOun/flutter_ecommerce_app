// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_sneaker_shop_ecommerce/constants/colors.dart';

class searchCoupon extends StatelessWidget {
  final TextEditingController textController1;
  final String hintText1;
  const searchCoupon({
    Key? key,
    required this.textController1,
    required this.hintText1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            offset: const Offset(12, 26),
            blurRadius: 50,
            spreadRadius: 0,
            color: Colors.grey.withOpacity(.1)),
      ]),
      child: TextField(
        style: TextStyle(
          fontFamily: 'NiraBold',
          color: Grey,
          fontSize: 14,
          letterSpacing: 0.5,
        ),
        controller: textController1,
        onChanged: (value) {
          //Do something wi
        },
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: hintText1,
          hintStyle: const TextStyle(
            color: Grey,
            fontFamily: 'NiraBold',
            fontSize: 12,
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
                color: Color.fromARGB(221, 209, 209, 209),
                width: 1.0,
                strokeAlign: BorderSide.strokeAlignInside),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Light, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
        ),
      ),
    );
  }
}

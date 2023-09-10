import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_sneaker_shop_ecommerce/component/All_Product_detail/ProductDetail.dart';
import 'package:flutter_sneaker_shop_ecommerce/model/Product.dart';

import '../constants/colors.dart';

class Product_1 extends StatefulWidget {
  const Product_1({super.key});

  @override
  State<Product_1> createState() => _Product_1State();
}

class _Product_1State extends State<Product_1> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 205,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: productMen.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 15), // Add right padding
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ProductDetail1(product: productMen[index]),
                  ),
                );
              },
              child: Container(
                width: 380,
                decoration: BoxDecoration(
                  color: Color(0xffF6F6F6),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1, color: Grey.withOpacity(0.1)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 200,
                      height: 420,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(productMen[index].imgaeURl1),
                            fit: BoxFit.fitWidth),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          productMen[index].name,
                          style:
                              TextStyle(fontFamily: 'NiraBold', fontSize: 20),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

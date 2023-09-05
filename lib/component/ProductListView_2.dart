import 'package:flutter/material.dart';
import 'package:flutter_sneaker_shop_ecommerce/component/All_Product_detail/ProductDetail.dart';
import 'package:flutter_sneaker_shop_ecommerce/model/Product.dart';

import '../constants/colors.dart';

class Product_2 extends StatefulWidget {
  const Product_2({super.key});

  @override
  State<Product_2> createState() => _Product_2State();
}

class _Product_2State extends State<Product_2> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: product2.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ProductDetail1(product: product2[index]),
                ),
              );
            },
            child: Container(
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1, color: Grey.withOpacity(0.2)),
              ),
              padding: EdgeInsets.all(12),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: Image.asset(
                          product2[index].imgaeURl,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product2[index].name,
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'NiraSemi',
                                color: Dark),
                          ),
                          Text(
                            '\$' + product2[index].price.toString(),
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'NiraSemi',
                                color: BluePrimary),
                          ),
                          Row(
                            children: [
                              Text(
                                product2[index].disPrice.toString(),
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'NiraSemi',
                                    color: Grey,
                                    decoration: TextDecoration.lineThrough),
                              ),
                              SizedBox(width: 8),
                              Text(
                                product2[index].discount.toString() + 'Off',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'NiraSemi',
                                  color: RedPrimary,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
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

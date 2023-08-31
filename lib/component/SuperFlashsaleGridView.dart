import 'package:flutter/material.dart';
import 'package:flutter_sneaker_shop_ecommerce/component/ProductDetailPage.dart';
import 'package:flutter_sneaker_shop_ecommerce/model/Product.dart';

import '../constants/colors.dart';

class Product_3 extends StatefulWidget {
  const Product_3({super.key});

  @override
  State<Product_3> createState() => _Product_3State();
}

class _Product_3State extends State<Product_3> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.builder(
        padding: EdgeInsets.all(9),
        scrollDirection: Axis.vertical,
        itemCount: product3.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Navigate to ProductDetailPage using Navigator
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailPage(index: index),
                ),
              );
            },
            child: Container(
              color: Colors.amber,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(product3[index].imgaeURl),
              )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      child: Image.asset(
                        product3[index].imgaeURl,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product3[index].name,
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'NiraSemi',
                              color: Dark),
                        ),
                        Text(
                          '\$' + product3[index].price.toString(),
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'NiraSemi',
                              color: BluePrimary),
                        ),
                        Row(
                          children: [
                            Text(
                              product3[index].disPrice.toString(),
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'NiraSemi',
                                  color: Grey,
                                  decoration: TextDecoration.lineThrough),
                            ),
                            SizedBox(width: 8),
                            Text(
                              product3[index].discount.toString() + 'Off',
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
          );
        },
      ),
    );
  }
}

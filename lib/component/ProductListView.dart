import 'package:flutter/material.dart';
import 'package:flutter_sneaker_shop_ecommerce/constants/colors.dart';
import 'package:flutter_sneaker_shop_ecommerce/model/Product.dart';

class Product_1 extends StatefulWidget {
  const Product_1({super.key});

  @override
  State<Product_1> createState() => _Product_1State();
}

class _Product_1State extends State<Product_1> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: product1.length,
      itemBuilder: (context, index) {
        return Expanded(
          child: Container(
            height: 250,
            width: 150,
            padding: EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    child: Image.asset(product1[index].imgaeURl),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product1[index].name,
                        style: TextStyle(fontSize: 12, fontFamily: 'NiraSemi'),
                      ),
                      Text(
                        '\$' + product1[index].price.toString(),
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'NiraSemi',
                            color: BluePrimary),
                      ),
                      Row(
                        children: [
                          Text(
                            product1[index].disPrice.toString(),
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'NiraSemi',
                                color: Grey,
                                decoration: TextDecoration.lineThrough),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            product1[index].discount.toString() + 'Off',
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
    );
  }
}

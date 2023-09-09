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
      height: 265,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: productMen.length,
        itemBuilder: (context, index) {
          return GestureDetector(
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
              width: 150,
              decoration: BoxDecoration(
                color: Color(0xffF6F6F6),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1, color: Grey.withOpacity(0.1)),
              ),
              padding: EdgeInsets.all(5),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        height: 130,
                        width: 120,
                        child: Image.asset(productMen[index].imgaeURl1),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            productMen[index].name,
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'NiraSemi',
                                color: Dark),
                          ),
                          RatingBar.builder(
                            initialRating: 3.5,
                            minRating: 1,
                            itemSize: 13,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '\$' + productMen[index].price.toString(),
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'NiraBold',
                                color: Dark),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                productMen[index].disPrice.toString(),
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'NiraSemi',
                                    color: Grey,
                                    decoration: TextDecoration.lineThrough),
                              ),
                              SizedBox(width: 8),
                              Text(
                                productMen[index].discount.toString() + 'Off',
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

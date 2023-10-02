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
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: productMen.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              left: 15,
            ), // Add right padding
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
                width: MediaQuery.of(context).size.width * 9,
                decoration: BoxDecoration(
                  color: Color(0xffF6F6F6),
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(width: 1, color: Grey.withOpacity(0.8)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 170,
                      margin: EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(productMen[index]
                              .imageUrl![0]
                              .url), // Access the URL property
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              productMen[index].name,
                              style: TextStyle(
                                  fontFamily: 'NiraBold', fontSize: 18),
                            ),
                            RatingBar.builder(
                              initialRating: 3.5,
                              minRating: 1,
                              itemSize: 15,
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
                              height: 10,
                            ),
                            Text(
                              '\$' + productMen[index].price.toString(),
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'NiraBold',
                                  color: Dark),
                            ),
                            SizedBox(height: 10),
                            Text(
                              productMen[index].disPrice.toString(),
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'NiraSemi',
                                  color: Grey,
                                  decoration: TextDecoration.lineThrough),
                            ),
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

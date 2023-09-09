import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_sneaker_shop_ecommerce/component/All_Product_detail/ProductDetail.dart';
import 'package:flutter_sneaker_shop_ecommerce/model/Product.dart';

import '../constants/colors.dart';

class Recommend_Product extends StatefulWidget {
  const Recommend_Product({super.key});

  @override
  State<Recommend_Product> createState() => _Recommend_ProductState();
}

class _Recommend_ProductState extends State<Recommend_Product> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 650,
        width: 365,
        child: GridView.builder(
          padding: EdgeInsets.all(9),
          scrollDirection: Axis.vertical,
          itemCount: sportswear.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              childAspectRatio: 0.70),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ProductDetail1(product: shoes_football[index]),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: PeopleSkin,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    width: 1,
                    color: Grey.withOpacity(0.1),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          height: 130,
                          width: 120,
                          child: Image.asset(sportswear[index].imgaeURl1),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              sportswear[index].name,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'NiraSemi',
                                  color: Dark),
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
                              height: 5,
                            ),
                            Text(
                              '\$' + sportswear[index].price.toString(),
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'NiraBold',
                                  color: Dark),
                            ),
                            Row(
                              children: [
                                Text(
                                  sportswear[index].disPrice.toString(),
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'NiraSemi',
                                      color: Grey,
                                      decoration: TextDecoration.lineThrough),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  sportswear[index].discount.toString() + 'Off',
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
      ),
    );
  }
}

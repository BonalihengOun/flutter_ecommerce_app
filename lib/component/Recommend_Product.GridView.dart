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
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Center(
        child: SizedBox(
          height: 650,
          width: 365,
          child: GridView.builder(
            padding: EdgeInsets.all(8),
            scrollDirection: Axis.vertical,
            itemCount: Product_all.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                childAspectRatio: 0.60),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ProductDetail1(product: Product_all[index]),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffF5F5F5),
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(width: 1, color: Grey.withOpacity(0.3)),
                  ),
                  padding:
                      EdgeInsets.only(bottom: 15, left: 15, right: 10, top: 5),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Container(
                          width: 250,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(Product_all[index].imgaeURl1),
                                fit: BoxFit.fitHeight),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Product_all[index].name,
                              style: TextStyle(
                                  fontFamily: 'NiraSemi',
                                  fontSize: 13,
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
                              '\$' + Product_all[index].price.toString(),
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'NiraBold',
                                  color: Dark),
                            ),
                            Row(
                              children: [
                                Text(
                                  Product_all[index].disPrice.toString(),
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'NiraSemi',
                                      color: Grey,
                                      decoration: TextDecoration.lineThrough),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  Product_all[index].discount.toString() +
                                      'Off',
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
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

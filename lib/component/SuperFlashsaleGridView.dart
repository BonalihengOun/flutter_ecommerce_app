// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:flutter_sneaker_shop_ecommerce/component/All_Product_detail/ProductDetail.dart';
import 'package:flutter_sneaker_shop_ecommerce/model/Product.dart';

import '../constants/colors.dart';

class Product_3 extends StatefulWidget {
  const Product_3({
    Key? key,
  }) : super(key: key);

  @override
  State<Product_3> createState() => _Product_3State();
}

class _Product_3State extends State<Product_3> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Expanded(
        child: Center(
          child: SizedBox(
            height: 660,
            width: 365,
            child: GridView.builder(
              padding: EdgeInsets.all(7),
              scrollDirection: Axis.vertical,
              itemCount: Product_all.where((product) =>
                  product.discount == null || product.disPrice == 0).length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 0.63),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final product = Product_all[index];
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
                      color: Color(0xffF3F3F3),
                      borderRadius: BorderRadius.circular(18),
                      border:
                          Border.all(width: 1, color: Grey.withOpacity(0.3)),
                    ),
                    padding: EdgeInsets.only(
                        bottom: 15, left: 15, right: 10, top: 5),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          Container(
                            width: 250,
                            height: 150,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      Product_all[index].imageUrl![0].url),
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
                                    fontSize: 18,
                                    fontFamily: 'NiraBold',
                                    color: Dark),
                              ),
                              Row(
                                children: [
                                  if (product.disPrice != null) ...[
                                    Text(
                                      '\$' +
                                          Product_all[index]
                                              .disPrice
                                              .toString(),
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'NiraSemi',
                                          color: Grey,
                                          decoration:
                                              TextDecoration.lineThrough),
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      Product_all[index].discount.toString() +
                                          ' Off',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'NiraSemi',
                                        color: RedPrimary,
                                      ),
                                    ),
                                  ],
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
      ),
    );
  }
}

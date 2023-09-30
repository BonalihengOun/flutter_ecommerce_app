import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_sneaker_shop_ecommerce/component/All_Product_detail/ProductDetail.dart';
import 'package:flutter_sneaker_shop_ecommerce/constants/colors.dart';
import 'package:flutter_sneaker_shop_ecommerce/model/Product.dart';

class Product_all_gridView extends StatefulWidget {
  const Product_all_gridView({super.key});

  @override
  State<Product_all_gridView> createState() => _Product_all_gridViewState();
}

class _Product_all_gridViewState extends State<Product_all_gridView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 265,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Product_all.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 20),
            child: GestureDetector(
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
                width: 150,
                decoration: BoxDecoration(
                  color: Color(0xffF6F6F6),
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(width: 1, color: Grey.withOpacity(0.8)),
                ),
                padding: EdgeInsets.all(12),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Container(
                            height: 130,
                            width: 120,
                            child: Image.asset(
                              Product_all[index].imageUrl![0].url,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Product_all[index].name,
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
                              '\$' + Product_all[index].price.toString(),
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
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_sneaker_shop_ecommerce/Widegt_Component/select_size.dart';
import 'package:flutter_sneaker_shop_ecommerce/constants/colors.dart';
import 'package:flutter_sneaker_shop_ecommerce/model/Product.dart'; // Import your Product class

class ProductDetail1 extends StatefulWidget {
  final Product product;

  ProductDetail1({required this.product});

  @override
  State<ProductDetail1> createState() => _ProductDetail1State();
}

class _ProductDetail1State extends State<ProductDetail1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Ink(
              decoration: ShapeDecoration(
                color: Colors
                    .transparent, // Set the background color to transparent
                shape: CircleBorder(), // Customize the shape as needed
              ),
              child: IconButton(
                splashRadius: 18,
                onPressed: () {},
                icon: Image.asset('lib/assets/pic/iconNavBar/Search.png'),
              ),
            ),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Ink(
          decoration: ShapeDecoration(
            color:
                Colors.transparent, // Set the background color to transparent
            shape: CircleBorder(), // Customize the shape as needed
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: IconButton(
              splashRadius: 18,
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Image.asset('lib/assets/pic/Left.png'),
            ),
          ),
        ),
        title: Text(
          widget.product.name,
          style: TextStyle(fontFamily: 'NiraBold', fontSize: 16, color: Dark),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 240,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.product.imgaeURl),
                    fit: BoxFit.cover),
              ),
            ), // Display the product image
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 22),
                        child: Text(
                          widget.product.name,
                          style: TextStyle(
                              fontFamily: 'NiraBold',
                              fontSize: 22,
                              color: Dark),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: IconButton(
                        splashRadius: 20,
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite,
                          color: RedPrimary,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 22),
                  child: RatingBar.builder(
                    initialRating: 3.5,
                    minRating: 1,
                    itemSize: 20,
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
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    '\$' + widget.product.price.toString(),
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'NiraSemi',
                        color: BluePrimary),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    'Select Size',
                    style: TextStyle(
                        fontSize: 14, fontFamily: 'NiraBold', color: Dark),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                selectSized(),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    'Select Color',
                    style: TextStyle(
                        fontSize: 14, fontFamily: 'NiraBold', color: Dark),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

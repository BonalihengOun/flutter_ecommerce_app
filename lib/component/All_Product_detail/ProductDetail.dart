import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_sneaker_shop_ecommerce/Widegt_Component/select_Color.dart';
import 'package:flutter_sneaker_shop_ecommerce/Widegt_Component/select_size.dart';
import 'package:flutter_sneaker_shop_ecommerce/constants/colors.dart';
import 'package:flutter_sneaker_shop_ecommerce/model/Product.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'; // Import your Product class

class ProductDetail1 extends StatefulWidget {
  final Product product;

  const ProductDetail1({required this.product});

  @override
  State<ProductDetail1> createState() => _ProductDetail1State();
}

bool selectedSize = false;

class _ProductDetail1State extends State<ProductDetail1> {
  final Controller_shoes = PageController();

  @override
  Widget build(BuildContext context) {
    bool isHatProduct = widget.product.type == 'Hat';
    bool isShoesProduct = widget.product.type == 'Shoes';
    bool isShoesFootball = widget.product.type == 'football shoes';
    bool isSock = widget.product.type == 'sock';
    bool iswomenHoodie = widget.product.type == 'women_hoodie';
    bool ismenHoodie = widget.product.type == 'men_hoodie';
    bool iswaterRepellent =
        widget.product.type == 'Water-Repellent Puffer Vest';
    bool isHatPeak = widget.product.type == 'Hat Peak';
    bool isSneaker = widget.product.type == 'Sneaker';
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
            Column(
              children: [
                if (isShoesFootball ||
                    isSock ||
                    iswomenHoodie ||
                    ismenHoodie ||
                    iswaterRepellent ||
                    isHatPeak ||
                    isSneaker)
                  Container(
                    width: double.infinity,
                    height: 240,
                    decoration: BoxDecoration(
                      color: Color(0xffF5F5F5),
                      image: DecorationImage(
                        image: AssetImage(widget.product.imageUrl![0].url),
                        fit: (isShoesFootball || isSneaker)
                            ? BoxFit.fitWidth
                            : BoxFit.fitHeight,
                      ),
                    ),
                  ),

                if (isHatProduct || isShoesProduct)
                  Container(
                    height: 240,
                    child: PageView(
                      controller: Controller_shoes,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 240,
                          decoration: BoxDecoration(
                            color: Color(0xffF5F5F5),
                            image: DecorationImage(
                              image: AssetImage(widget.product.imageUrl![0]
                                  .url), // Use the first image URL
                              fit: (isHatProduct)
                                  ? BoxFit.fitHeight
                                  : BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 240,
                          decoration: BoxDecoration(
                            color: Color(0xffF5F5F5),
                            image: DecorationImage(
                              image: AssetImage(widget.product.imageUrl![1]
                                  .url), // Use the second image URL
                              fit: (isHatProduct)
                                  ? BoxFit.fitHeight
                                  : BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 240,
                          decoration: BoxDecoration(
                            color: Color(0xffF5F5F5),
                            image: DecorationImage(
                              image: AssetImage(widget.product.imageUrl![2]
                                  .url), // Use the third image URL
                              fit: (isHatProduct)
                                  ? BoxFit.fitHeight
                                  : BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 240,
                          decoration: BoxDecoration(
                            color: Color(0xffF5F5F5),
                            image: DecorationImage(
                              image: AssetImage(widget.product.imageUrl![3]
                                  .url), // Use the fourth image URL
                              fit: (isHatProduct)
                                  ? BoxFit.fitHeight
                                  : BoxFit.fitWidth,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                // Rest of your widget tree
                // ...
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (isHatProduct || isShoesProduct)
                  Center(
                    child: SmoothPageIndicator(
                      controller: Controller_shoes,
                      count: widget.product.imageUrl!
                          .length, // Set the count based on imageUrl length
                      effect: WormEffect(
                        type: WormType.underground,
                        activeDotColor: Dark,
                        dotHeight: 8,
                        dotWidth: 8,
                        dotColor: Grey,
                        spacing: 10,
                      ),
                    ),
                  ),
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
                  height: 18,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    '\$' + widget.product.price.toString(),
                    style: TextStyle(
                        fontSize: 28, fontFamily: 'NiraSemi', color: Dark),
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
                selectSized(
                  type: widget.product.type1.toString(),
                ),
                SizedBox(
                  height: 12,
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    'Select Color',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'NiraBold',
                      color: Dark,
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: SelectColor(
                    product: widget.product,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    'Specification',
                    style: TextStyle(
                        fontSize: 14, fontFamily: 'NiraBold', color: Dark),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Shown',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'NiraRegular',
                            color: Dark),
                      ),
                      Text(
                        widget.product.colorshown_1,
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'NiraRegular',
                            color: Dark),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Style',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'NiraRegular',
                            color: Dark),
                      ),
                      Text(
                        widget.product.styleColor1,
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'NiraRegular',
                            color: Dark),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 1.2,
                        bottom: 0,
                        child: Text(
                          widget.product.describtion,
                          style: TextStyle(
                              fontFamily: 'NiraRegular',
                              color: Grey,
                              letterSpacing: 0.5),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

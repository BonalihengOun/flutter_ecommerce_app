import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_sneaker_shop_ecommerce/Widegt_Component/select_Color.dart';
import 'package:flutter_sneaker_shop_ecommerce/Widegt_Component/select_size.dart';
import 'package:flutter_sneaker_shop_ecommerce/component/product_all.dart';
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
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void changeImage(String color) {
    int index =
        widget.product.imageUrl!.indexWhere((image) => image.color == color);
    if (index >= 0) {
      setState(() {
        _pageController.animateToPage(
          index,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      });
    }
  }

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
            //imgURl_product
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
                      controller: _pageController,
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
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //SmoothPageIndicator
                  if (isHatProduct || isShoesProduct)
                    Center(
                      child: SmoothPageIndicator(
                        controller: _pageController,
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
                  //Product_name_and_favorite
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
                  //Rating Star
                  Expanded(
                    flex: 0,
                    child: Padding(
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
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Expanded(
                    flex: 0,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text(
                        '\$' + widget.product.price.toString(),
                        style: TextStyle(
                            fontSize: 28, fontFamily: 'NiraSemi', color: Dark),
                      ),
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
                  //Select_Sized
                  selectSized(
                    type: widget.product.type1.toString(),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  //Select_color
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
                      onColorSelected:
                          changeImage, // Pass the callback function
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
                    padding:
                        const EdgeInsets.only(left: 25, right: 25, top: 10),
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 10),
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
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Text(
                                'Review Product',
                                style: TextStyle(
                                    fontFamily: 'NiraBold', fontSize: 14),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'See More',
                                  style: TextStyle(
                                      fontFamily: "NiraBold", color: Dark),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 0,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
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
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Text(
                                  " 4.5 ",
                                  style: TextStyle(
                                      fontFamily: 'NiraBold', color: Grey),
                                ),
                                Text(
                                  '(5 Review)',
                                  style: TextStyle(
                                      fontFamily: 'NiraRegular', color: Grey),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  child: Image.asset(
                                      'lib/assets/pic/Ellipse 119.png'),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'James Lawson',
                                      style: TextStyle(fontFamily: 'NiraBold'),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    RatingBar.builder(
                                      initialRating: 3.5,
                                      minRating: 1,
                                      itemSize: 22,
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
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25, top: 16),
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
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25, top: 10),
                            child: Text(
                              'You also Might Like',
                              style: TextStyle(
                                  fontFamily: 'NiraBold', fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Product_all_gridView(),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0,

                        primary: Dark,
                        // Change the button's background color
                        onPrimary: Colors.white,
                        // Change the text color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              14.0), // Set the border radius
                        ),

                        minimumSize: Size(
                            MediaQuery.of(context).size.width * 0.90,
                            MediaQuery.of(context).size.height *
                                0.065), // Set the width and height
                      ),
                      child: Text(
                        "Add to Cart",
                        style: TextStyle(fontFamily: "NiraBold"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_sneaker_shop_ecommerce/component/ProductListView_2.dart';
import 'package:flutter_sneaker_shop_ecommerce/component/ProductListView_1.dart';
import 'package:flutter_sneaker_shop_ecommerce/Widegt_Component/SearchWidget.dart';
import 'package:flutter_sneaker_shop_ecommerce/component/categoryListView.dart';
import 'package:flutter_sneaker_shop_ecommerce/constants/colors.dart';
import 'package:flutter_sneaker_shop_ecommerce/offer%20Banner/Promotion_Card.dart';
import 'package:flutter_sneaker_shop_ecommerce/offer%20Banner/Recommend_Card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Controller = PageController();
  final TextEditingController _searchInputController = TextEditingController();

  @override
  void dispose() {
    Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SearchInput(
                          textController: _searchInputController,
                          hintText: 'Search Product'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () {},
                            splashRadius: 20.5,
                            icon: Icon(
                              Icons.favorite_border,
                              color: Grey,
                              size: 24,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: IconButton(
                              onPressed: () {},
                              splashRadius: 20.5,
                              autofocus: EditableText.debugDeterministicCursor,
                              icon: Image.asset(
                                'lib/assets/pic/NotificationIcon.png',
                                width: 24,
                                height: 24,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 220,
                      width: 350,
                      child: PageView(
                        controller: Controller,
                        scrollDirection: Axis.horizontal,
                        children: [
                          Promotion(
                            text: 'Discount Upto 50%',
                            image: 'lib/assets/pic/Promotion 1.png',
                            onTap: () {},
                          ),
                          Recommend(
                            text: 'Recommended \nProduct for you',
                            image: 'lib/assets/pic/Promotion 2.png',
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SmoothPageIndicator(
                        controller: Controller,
                        count: 2,
                        effect: WormEffect(
                          type: WormType.underground,
                          activeDotColor: Dark.withOpacity(0.8),
                          dotHeight: 10,
                          dotWidth: 10,
                          dotColor: Grey,
                          spacing: 10,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Category',
                        style: TextStyle(
                            fontFamily: 'NiraBold', fontSize: 14, color: Dark),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'More Category',
                          style: TextStyle(
                              fontFamily: 'NiraBold',
                              fontSize: 14,
                              color: Dark),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 101,
                  child: categoryListView(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Flash Sale',
                        style: TextStyle(
                            fontFamily: 'NiraBold', fontSize: 14, color: Dark),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'See more',
                          style: TextStyle(
                              fontFamily: 'NiraBold',
                              fontSize: 14,
                              color: Dark),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Column(
                    children: [
                      Product_1(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Mega Sale',
                              style: TextStyle(
                                  fontFamily: 'NiraBold',
                                  fontSize: 14,
                                  color: Dark),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'See more',
                                style: TextStyle(
                                    fontFamily: 'NiraBold',
                                    fontSize: 14,
                                    color: Dark),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Product_2(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

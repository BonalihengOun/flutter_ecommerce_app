import 'package:flutter/material.dart';
import 'package:flutter_sneaker_shop_ecommerce/component/SearchWidget.dart';
import 'package:flutter_sneaker_shop_ecommerce/constants/colors.dart';
import 'package:flutter_sneaker_shop_ecommerce/offer%20Banner/Promotion_Card.dart';
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SearchInput(
                        textController: _searchInputController,
                        hintText: 'Search Product'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {},
                          splashRadius: 1.5,
                          icon: Icon(
                            Icons.favorite_border,
                            color: Grey,
                            size: 24,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          splashRadius: 1.5,
                          autofocus: EditableText.debugDeterministicCursor,
                          alignment: Alignment(-2, 0),
                          icon: Image.asset(
                            'lib/assets/pic/NotificationIcon.png',
                            width: 24,
                            height: 24,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 206,
                    width: 343,
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: PageView(
                        controller: Controller,
                        children: [
                          Promotion(
                            text: '\tSuper Flash Sale\n 50% off',
                            image: 'lib/assets/pic/Promotion 1.png',
                            onTap: () {},
                          ),
                          Promotion(
                            text: 'Recommended \nProduct',
                            image: 'lib/assets/pic/Promotion 2.png',
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SmoothPageIndicator(
                      controller: Controller,
                      count: 2,
                      effect: WormEffect(
                        type: WormType.underground,
                        activeDotColor: BluePrimary.withOpacity(0.8),
                        dotHeight: 10,
                        dotWidth: 10,
                        dotColor: Grey,
                        spacing: 10,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

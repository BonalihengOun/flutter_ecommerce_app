import 'package:flutter/material.dart';
import 'package:flutter_sneaker_shop_ecommerce/constants/colors.dart';
import 'package:flutter_sneaker_shop_ecommerce/model/category.dart';

class categoryListView extends StatefulWidget {
  const categoryListView({super.key});

  @override
  State<categoryListView> createState() => _categoryListViewState();
}

class _categoryListViewState extends State<categoryListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25, bottom: 5),
              child: GestureDetector(
                onTap: () {
                  print("Hello");
                },
                child: Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Dark.withOpacity(1)),
                    image: DecorationImage(
                      scale: Checkbox.width,
                      image: AssetImage(
                        categories[index].imageUrl,
                      ),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(66),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, bottom: 5),
              child: Text(
                categories[index].title,
                style: TextStyle(
                  fontFamily: 'NiraRegular',
                  fontSize: 10,
                  color: Dark,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

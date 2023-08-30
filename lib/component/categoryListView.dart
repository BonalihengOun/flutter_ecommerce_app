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
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  print("Hello");
                },
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Grey.withOpacity(0.5)),
                    image: DecorationImage(
                      image: AssetImage(categories[index].imageUrl),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(66),
                    ),
                  ),
                ),
              ),
            ),
            Text(
              categories[index].title,
              style: TextStyle(
                  fontFamily: 'NiraRegular', fontSize: 10, color: Grey),
            ),
          ],
        );
      },
    );
  }
}

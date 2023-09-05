import 'package:flutter/material.dart';

import '../constants/colors.dart';

class selectSized extends StatefulWidget {
  const selectSized({super.key});

  @override
  State<selectSized> createState() => _selectSizedState();
}

class _selectSizedState extends State<selectSized> {
  String selectedSize = "Select Size";
  // Initially, no size is selected
  final List<String> availableSizes = [
    "37",
    "38",
    "39",
    "40",
    "41",
    "42",
    "43",
    "44",
    "45",
    "46"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      margin: EdgeInsets.only(left: 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: availableSizes.length,
        itemBuilder: (context, index) {
          final size = availableSizes[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedSize = size;
                });
              },
              style: ButtonStyle(
                shape: MaterialStatePropertyAll(
                    CircleBorder(side: BorderSide.none)),
                backgroundColor: selectedSize == size
                    ? MaterialStateProperty.all<Color>(RedPrimary)
                    : MaterialStateProperty.all<Color>(Dark.withOpacity(0.8)),
              ),
              child: Text(size),
            ),
          );
        },
      ),
    );
  }
}

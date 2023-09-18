import 'package:flutter/material.dart';



import '../constants/colors.dart';

class selectSized extends StatefulWidget {
  final String type;
  const selectSized({super.key, required this.type});

  @override
  State<selectSized> createState() => _selectSizedState();
}

class _selectSizedState extends State<selectSized> {
  String selectedSize = "Select Size";
  // Initially, no size is selected
  final List<String> availableSizesForShoes = [
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
  final List<String> availableSizesSportwears = ["S", "M", "L", "XL"];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      margin: EdgeInsets.only(left: 16),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.type == 'sportwear'
            ? availableSizesSportwears.length
            : availableSizesForShoes.length,
        itemBuilder: (context, index) {
          final size = widget.type == 'sportwear'
              ? availableSizesSportwears[index]
              : availableSizesForShoes[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedSize = size;
                });
              },
              style: ButtonStyle(
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(width: 1))),
                backgroundColor: selectedSize == size
                    ? MaterialStateProperty.all<Color>(Dark)
                    : MaterialStateProperty.all<Color>(Colors.white),
              ),
              child: Container(
                child: Text(
                  size,
                  style: TextStyle(
                    fontFamily: 'NiraBold',
                    color: selectedSize == size ? Light : Dark,
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

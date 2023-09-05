import 'package:flutter/material.dart';

class SelectColor extends StatefulWidget {
  const SelectColor({Key? key}) : super(key: key);

  @override
  _SelectColorState createState() => _SelectColorState();
}

class _SelectColorState extends State<SelectColor> {
  String selectedColor = "Black"; // Initialize with a default color

  // Define available colors for the product
  final List<String> availableColors = ["Black", "White", "WhiteRed"];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 55,
          margin: EdgeInsets.only(left: 10),
          child: ListView.builder(
            itemCount: availableColors.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final color = availableColors[index];
              Color backgroundColor = Colors.transparent;
              Color borderColor = Colors.transparent;

              // Assign custom background colors based on the color name
              if (color == "Black") {
                backgroundColor = Color(0xff3B4E77);
              } else if (color == "White") {
                backgroundColor = Color(0xffDD8E8B);
              } else if (color == "WhiteRed") {
                backgroundColor = Color(0xffC9D5A0);
              }

              // Check if the color is selected
              if (selectedColor == color) {
                // If selected, add a border to indicate selection
                borderColor =
                    Colors.white; // You can customize the border color
              }

              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedColor = color;
                    });
                  },
                  style: ButtonStyle(
                    shape: MaterialStatePropertyAll(
                        CircleBorder(side: BorderSide.none)),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(backgroundColor),
                  ),
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: borderColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

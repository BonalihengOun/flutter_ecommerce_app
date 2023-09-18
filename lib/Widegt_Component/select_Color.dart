import 'package:flutter/material.dart';
import 'package:flutter_sneaker_shop_ecommerce/model/Product.dart';

class SelectColor extends StatefulWidget {
  const SelectColor({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  _SelectColorState createState() => _SelectColorState();
}

class _SelectColorState extends State<SelectColor> {
  String selectedColor = ""; // Initialize with an empty string

  @override
  void initState() {
    super.initState();
    // Set the initial selected color to the first color in the imageUrl list
    selectedColor = widget.product.imageUrl![0].color!;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 55,
          margin: EdgeInsets.only(left: 10),
          child: ListView.builder(
            itemCount: widget.product.imageUrl?.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final colorInfo = widget.product.imageUrl![index].color;

              Color backgroundColor = Colors.transparent;
              Color borderColor = Colors.transparent;

              // Assign custom background colors based on the color name
              if (colorInfo == widget.product.imageUrl![0].color) {
                backgroundColor = Color(int.parse(colorInfo!));
              } else if (colorInfo == widget.product.imageUrl![1].color) {
                backgroundColor = Color(int.parse(colorInfo!));
              } else if (colorInfo == widget.product.imageUrl![2].color) {
                backgroundColor = Color(int.parse(colorInfo!));
              } else if (colorInfo == widget.product.imageUrl![3].color) {
                backgroundColor = Color(int.parse(colorInfo!));
              }

              // Check if the color is selected
              if (selectedColor == colorInfo) {
                // If selected, add a border to indicate selection
                borderColor =
                    Colors.white; // You can customize the border color
              }

              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedColor = colorInfo!;
                    });
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(CircleBorder(
                        side: BorderSide(
                      width: 0.5,
                    ))),
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

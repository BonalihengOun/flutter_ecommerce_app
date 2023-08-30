import 'package:flutter/material.dart';
import 'package:flutter_sneaker_shop_ecommerce/constants/colors.dart';

class SearchInput extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;
  const SearchInput(
      {required this.textController, required this.hintText, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.height / 3.25,
      margin: EdgeInsets.only(left: 5),
      height: 45,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            offset: const Offset(12, 26),
            blurRadius: 50,
            spreadRadius: 0,
            color: Colors.grey.withOpacity(.1)),
      ]),
      child: TextField(
        style: TextStyle(
          fontFamily: 'NiraBold',
          color: Grey,
          fontSize: 12,
          letterSpacing: 0.5,
        ),
        controller: textController,
        onChanged: (value) {
          //Do something wi
        },
        decoration: InputDecoration(
          prefixIcon: Image.asset('lib/assets/pic/iconNavBar/Search.png'),
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
          hintStyle: const TextStyle(
              color: Grey, fontFamily: 'NiraRegular', fontSize: 12),
          contentPadding: EdgeInsets.all(6),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
                color: Color.fromARGB(221, 209, 209, 209),
                width: 1.0,
                strokeAlign: BorderSide.strokeAlignInside),
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Light, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
        ),
      ),
    );
  }
}

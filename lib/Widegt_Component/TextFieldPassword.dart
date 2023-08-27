import 'package:flutter/material.dart';
import 'package:flutter_sneaker_shop_ecommerce/constants/colors.dart';

class PasswordInput extends StatefulWidget {
  final TextEditingController inputController;
  PasswordInput({Key? key, required this.inputController}) : super(key: key);

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool _isObscured = true;
  @override
  Widget build(BuildContext context) {
    const accentColor = Color(0xffffffff);

    const errorColor = Color(0xffEF4444);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Email",
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: Colors.white.withOpacity(.9)),
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          height: 50,
          width: 350,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                offset: const Offset(12, 26),
                blurRadius: 50,
                spreadRadius: 0,
                color: Colors.grey.withOpacity(.1)),
          ]),
          child: TextField(
            controller: widget.inputController,
            onChanged: (value) {
              //Do something wi
            },
            keyboardType: TextInputType.emailAddress,
            obscureText: _isObscured,
            style: const TextStyle(
                fontSize: 16, fontFamily: 'NiraBold', color: Grey),
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: const EdgeInsets.only(right: 13),
                child: Image.asset(
                  'lib/assets/pic/IconLock.png',
                  alignment: Alignment(0.5, 0),
                ),
              ),
              suffixIcon: IconButton(
                icon:
                    Icon(_isObscured ? Icons.visibility_off : Icons.visibility),
                onPressed: () {
                  setState(() {
                    _isObscured = !_isObscured; // Toggle password visibility
                  });
                },
              ),
              filled: true,
              fillColor: accentColor,
              hintText: 'Password',
              hintStyle: TextStyle(
                  color: Colors.grey.withOpacity(.75),
                  fontFamily: 'NiraRegular'),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: BluePrimary, width: 1.0),
              ),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: errorColor, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Grey, width: 1.0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_sneaker_shop_ecommerce/constants/colors.dart';

class PasswordInput extends StatefulWidget {
  final TextEditingController inputController;
  final String text;
  PasswordInput({Key? key, required this.inputController, required this.text})
      : super(key: key);

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool _isObscured = true;
  bool _hasText1 = false;

  @override
  void initState() {
    super.initState();
    // Listen for changes in the text field
    widget.inputController.addListener(_updateHasText);
  }

  void _updateHasText() {
    setState(() {
      _hasText1 = widget.inputController.text.isNotEmpty;
    });
  }

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
              prefixIcon: _hasText1
                  ? Padding(
                      padding: const EdgeInsets.only(right: 13),
                      child: Image.asset(
                        'lib/assets/pic/IconLock.png',
                        color: Dark,
                        alignment: Alignment(0.4, 0),
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.only(right: 13),
                      child: Image.asset(
                        'lib/assets/pic/IconLock.png',
                        alignment: Alignment(0.4, 0),
                      ),
                    ),
              suffixIcon: IconButton(
                icon: Icon(
                  _isObscured ? Icons.visibility_off : Icons.visibility,
                ),
                onPressed: () {
                  setState(() {
                    _isObscured = !_isObscured; // Toggle password visibility
                  });
                },
              ),
              filled: true,
              fillColor: accentColor,
              hintText: widget.text,
              hintStyle: TextStyle(
                  color: Colors.grey.withOpacity(.75),
                  fontFamily: 'NiraRegular'),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                borderSide: BorderSide(color: Dark, width: 1.0),
              ),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: errorColor, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: Grey, width: 1.0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

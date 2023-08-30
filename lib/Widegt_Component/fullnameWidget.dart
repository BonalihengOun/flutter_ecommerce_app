import 'package:flutter/material.dart';
import 'package:flutter_sneaker_shop_ecommerce/constants/colors.dart';

class fullnameForm extends StatefulWidget {
  final TextEditingController inputController;
  fullnameForm({Key? key, required this.inputController}) : super(key: key);

  @override
  State<fullnameForm> createState() => _fullnameFormState();
}

class _fullnameFormState extends State<fullnameForm> {
  bool _hasText = false;

  @override
  void initState() {
    super.initState();
    // Listen for changes in the text field
    widget.inputController.addListener(_updateHasText);
  }

  void _updateHasText() {
    setState(() {
      _hasText = widget.inputController.text.isNotEmpty;
    });
  }

  @override
  void dispose() {
    // Clean up by removing the listener when the widget is disposed
    widget.inputController.removeListener(_updateHasText);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 58,
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
            style: const TextStyle(
                fontSize: 16, fontFamily: 'NiraBold', color: Grey),
            decoration: InputDecoration(
              prefixIcon: _hasText
                  ? Image.asset(
                      'lib/assets/pic/UserBlue.png',
                      alignment: Alignment(0.3, 0),
                    )
                  : Padding(
                      padding: const EdgeInsets.only(right: 11),
                      child: Image.asset(
                        'lib/assets/pic/UserIcon.png',
                        alignment: Alignment(0.4, 0),
                      ),
                    ),
              filled: true,
              fillColor: accentColor,
              hintText: 'Full name',
              hintStyle: TextStyle(
                  color: Colors.grey.withOpacity(.75),
                  fontFamily: 'NiraRegular'),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: BluePrimary, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: errorColor, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Grey, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

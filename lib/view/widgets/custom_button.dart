import 'package:e_commerce_app/view/constance.dart';
import 'package:e_commerce_app/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  const CustomButton({Key key, this.text, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(18),
      onPressed: onPressed,
      child: CustomText(
        text: text,
        color: white,
        alignment: Alignment.center,
      ),
      color: primaryColor,
    );
  }
}

import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final Alignment alignment;

  const CustomText({
    Key key,
    this.text = '',
    this.color = Colors.black,
    this.size = 16,
    this.alignment = Alignment.topLeft,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: size,
        ),
      ),
    );
  }
}

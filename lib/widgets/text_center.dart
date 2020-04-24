import 'package:flutter/material.dart';

class TextCenter extends StatelessWidget {
  final String title;
  final TextStyle style;
  final TextAlign textAlign;

  const TextCenter({
    Key key,
    this.title,
    this.style,
    this.textAlign = TextAlign.left
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title,
        style: style,
        textAlign: textAlign,
      ),
    );
  }
}

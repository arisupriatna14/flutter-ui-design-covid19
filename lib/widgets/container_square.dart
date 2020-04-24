import 'package:flutter/material.dart';

class ContainerSquare extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;
  final Color color;

  const ContainerSquare({
    Key key,
    this.height,
    this.width = double.infinity,
    @required this.child,
    this.color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: child,
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(50.0)
      ),
    );
  }
}
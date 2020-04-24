import 'package:flutter/material.dart';

class SlideRightRoute extends PageRouteBuilder {
  final Widget widget;
  
  SlideRightRoute({
    @required this.widget
  }) : super(
    pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
      return widget;
    },
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(1.0, 0.0);
      var end = Offset.zero;
      var tween = Tween(begin: begin, end: end);
      var offsetAnimation = animation.drive(tween);
      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    }
  );
}

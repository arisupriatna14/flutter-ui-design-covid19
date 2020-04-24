import 'package:covid19_apps/screens/home_screen.dart';
import 'package:flutter/material.dart';

class ButtonSquare extends StatelessWidget {
  final String title;
  const ButtonSquare({
    Key key,
    this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 50.0,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0XFFEB6765),
          borderRadius: BorderRadius.circular(50.0)
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.w600
            ),
          ),
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, HomeScreen.route);
      },
      borderRadius: BorderRadius.circular(50.0),
    );
  }
}

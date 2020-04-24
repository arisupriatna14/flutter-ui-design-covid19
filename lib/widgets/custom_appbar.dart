import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Corona Virus",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
              fontWeight: FontWeight.w700
            ),
          ),
          Image.asset("assets/images/user.png", width: 50,)
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'container_square.dart';

class TextFormSearch extends StatelessWidget {
  const TextFormSearch({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: ContainerSquare(
        height: 56.0,
        color: Colors.white,
        child: TextFormField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            contentPadding: EdgeInsets.all(16.0),
            hintText: "Search",
            hintStyle: TextStyle(fontSize: 16.0, color: Color(0XFF8C8A9A)),
            suffixIcon: Container(
              width: 15.0,
              height: 15.0,
              padding: EdgeInsets.all(10.0),
              child: SvgPicture.asset("assets/icons/search.svg", width: 0.5, height: 0.5,),
            )
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class ContainerSymptom extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  const ContainerSymptom({
    Key key,
    @required this.image,
    @required this.title,
    @required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(.2),
        borderRadius: BorderRadius.circular(15.0)
      ),
      child: Column(
        children: <Widget>[
          Image.asset(image, width: 110.0),
          SizedBox(height: 16.0),
          Text(
            title,
            style: TextStyle(
              fontSize: 14.0,
              color: Color(0XFF0B0320),
              fontWeight: FontWeight.w600
            )
          ),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 14.0,
              color: Color(0XFF8C8A9A),
            )
          )
        ],
      )
    );
  }
}

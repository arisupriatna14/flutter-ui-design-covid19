import 'package:flutter/material.dart';

class LiveNewsUpdate extends StatelessWidget {
  const LiveNewsUpdate({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Live News Update", style: TextStyle(fontSize: 22.0, color: Colors.white, fontWeight: FontWeight.w700)),
          SizedBox(height: 16.0),
          Image.asset("assets/images/graph.png")
        ],
      ),
    );
  }
}
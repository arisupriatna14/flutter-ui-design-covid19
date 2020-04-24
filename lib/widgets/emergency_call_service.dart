import 'package:flutter/material.dart';

class EmergencyCallService extends StatelessWidget {
  const EmergencyCallService({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.0,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: <Widget>[
          Container(
            height: 120.0,
            margin: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Color(0XFFEB6765),
              borderRadius: BorderRadius.circular(15.0)
            ),
          ),
          Positioned(
            left: 24.0,
            bottom: 16.0,
            child: Image.asset("assets/images/doctors.png", width: 120.0,)
          ),
          Positioned(
            left: 175,
            bottom: 100,
            child: Text(
              "Emergency Call Service",
              style: TextStyle(fontSize: 15.0, color: Colors.white, fontWeight: FontWeight.w600)
            ),
          ),
          Positioned(
            left: 175,
            bottom: 30,
            child: Container(
              height: 36.0,
              width: 150.0,
              margin: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50.0)
              ),
              child: Center(
                child: Text("+1 123 456 7890"),
              ),
            ),
          )
        ],
      ),
    );
  }
}

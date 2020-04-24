import 'package:covid19_apps/widgets/button_square.dart';
import 'package:flutter/material.dart';

class GettingStartedScreen extends StatelessWidget {
  const GettingStartedScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset("assets/images/disinfektan.png"),
              Container(
                margin: EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Be Aware\nFrom Covid-19",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35.0,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      "Coronavirus disease COVID-19 is an infectious disease caused by a newly discovered coronavirus.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(height: 24.0),
                    ButtonSquare(title: "Learn Awareness")
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

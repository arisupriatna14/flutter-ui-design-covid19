import 'package:covid19_apps/screens/detail_screen.dart';
import 'package:covid19_apps/screens/getting_started_screen.dart';
import 'package:covid19_apps/screens/home_screen.dart';
import 'package:covid19_apps/widgets/custom_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
    statusBarBrightness: Brightness.dark
  ));
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0XFF2C2B4B),
        primarySwatch: Colors.blue,
        fontFamily: "Poppins"
      ),
      debugShowCheckedModeBanner: false,
      home: GettingStartedScreen(),
      onGenerateRoute: (settings) {
        if (settings.name == HomeScreen.route) {
          return SlideRightRoute(widget: HomeScreen());
        }
        if (settings.name == DetailScreen.route) {
          final DetailScreenArgument args = settings.arguments;
          return SlideRightRoute(widget: DetailScreen(argument: args));
        }
      },
    );
  }
}


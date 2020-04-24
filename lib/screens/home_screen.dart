import 'package:covid19_apps/model/category_model.dart';
import 'package:covid19_apps/screens/detail_screen.dart';
import 'package:covid19_apps/widgets/custom_appbar.dart';
import 'package:covid19_apps/widgets/emergency_call_service.dart';
import 'package:covid19_apps/widgets/live_news_update.dart';
import 'package:covid19_apps/widgets/text_form_search.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const route = '/homescreen';
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> categories = ["Contagion", "Indication", "Preventation"];
  int _selectedCategories = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              CustomAppBar(),
              TextFormSearch(),
              _buildCategories(),
              ListSymptom(),
              EmergencyCallService(),
              LiveNewsUpdate()
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategories() {
    return SizedBox(
      height: 85.0,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            child: Container(
              width: 135.0,
              height: 45.0,
              margin: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: _selectedCategories == index ? Color(0XFFEB6765) : Colors.transparent,
                borderRadius: BorderRadius.circular(50.0)
              ),
              child: Center(
                child: Text(categories[index], style: TextStyle(fontSize: 14.0, color: Colors.white)),
              ),
            ),
            onTap: () {
              setState(() {
                _selectedCategories = index;
              });
            },
          );
        },
      ),
    );
  }
}

class ListSymptom extends StatelessWidget {
  const ListSymptom({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: 220.0,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: dataDummy.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              child: Container(
                width: 170.0,
                padding: EdgeInsets.all(8.0),
                margin: EdgeInsets.fromLTRB(16.0, 8.0, index == dataDummy.length - 1 ? 16.0 : 8.0, 16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(dataDummy[index].image, width: 92.0,),
                    SizedBox(height: 8.0),
                    Text(
                      dataDummy[index].title,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Color(0XFF0B0320),
                        fontWeight: FontWeight.w600
                      )
                    ),
                    Text(
                      dataDummy[index].subtitle,
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Color(0XFF8C8A9A),
                      )
                    )
                  ],
                ),
              ),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  DetailScreen.route,
                  arguments: DetailScreenArgument(
                    dataDummy[index].image,
                    dataDummy[index].title
                  )
                );
              },
            );
          },
        ),
      ),
    );
  }
}

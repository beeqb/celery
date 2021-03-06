// IS THIS FILE STILL NEEDED???

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'food_icon.dart';
import 'package:transparent_image/transparent_image.dart';
import 'recents.dart';
import 'stats_page.dart';
import 'globals.dart' as globals;
import 'analysis.dart';
import 'profile.dart';
import 'category.dart';
import 'produce.dart';
import 'package:intl/intl.dart';
import 'Social.dart';
import 'home_page.dart';

class CompanyInfoPage extends StatefulWidget {
  State createState() => new CompanyInfoPageState();
}

class CompanyInfoPageState extends State<CompanyInfoPage> {
int index = 0;
List<Category> list = globals.three;
  Widget _buildBottomNav() {
    return new BottomNavigationBar(
      currentIndex: 2,
      onTap: (index) {
        this.index = index;
        if (index == 0) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePage()));
        }
        if (index == 1) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AnalysisPage()));
        }
        if (index == 2) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => SocialPage()));
        }
      },
      items: <BottomNavigationBarItem>[
        new BottomNavigationBarItem(
          icon: new Icon(Icons.home),
          title: new Text("Home"),
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.lightbulb_outline),
          title: new Text("Insights"),
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.people),
          title: new Text("Suppliers"),
        ),
      ],
    );
  }

  Widget _buildDrawer() {
    return Drawer(
        child: ListView(
      children: <Widget>[
        DrawerHeader(
          child: Row(
            children: <Widget>[
              SizedBox(width: 20.0),
              Image.asset('assets/logo.png', width: 70.0, height: 70.0),
              SizedBox(width: 20.0),
              Text("Celery",
                  style: TextStyle(
                      fontFamily: "Rajdhani",
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold))
            ],
          ),
        ),
        ListTile(
            title: Text("Recently Cooked",
                style: TextStyle(fontFamily: "Rajdhani"),
                ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => RecentsPage()));
            }
          ),
        ListTile(
            title: Text("---",
                style: TextStyle(fontFamily: "Rajdhani")),
            onTap: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => Stats2Page()));
            }
          ),
        ListTile(
            title: Text("---",
                style: TextStyle(fontFamily: "Rajdhani")),
            onTap: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => Stats3Page()));
            }
          ),
        ListTile(
            title: Text("Settings", style: TextStyle(fontFamily: "Rajdhani")),
            onTap: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => Stats4Page()));
            }),
        ListTile(
          title: Text("Help", style: TextStyle(fontFamily: "Rajdhani")),
          onTap: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => Stats5Page()));
            }
          ),
        ListTile(
            title: Text("About Us", style: TextStyle(fontFamily: "Rajdhani")),
            onTap: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => Stats6Page()));
            }
            ),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    //showMap();
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return new Scaffold(
      appBar: AppBar(
        title: new Padding(
            child: new Text("Suppliers",
                style: new TextStyle(
                    fontWeight: FontWeight.normal,
                    fontFamily: "Rajdhani",
                    fontStyle: FontStyle.normal,
                    fontSize: 25.0)),
            padding: const EdgeInsets.only(left: 0.0)),
      ),
      body: 
        Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Expanded(
          child: SizedBox(
            height: 200.0,
            child: new ListView(
              children: <Widget>[
                buildName(),
                buildPhone(),
                buildRating(),
              ],
            )
          ),
        ),
        
      ],
    )),
      drawer: _buildDrawer(),
      bottomNavigationBar: _buildBottomNav(),
    );
  }

Widget buildName(){
  return Padding(
                          padding: EdgeInsets.all(20.0),
                          child:  
                          Column(
                            children: <Widget> [
                        new Text("Company:",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 21.0,
                                  fontFamily: "Quicksand",
                                  fontWeight: FontWeight.w500)),
                        new Text(globals.chosen.company,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 21.0,
                                  fontFamily: "Quicksand",
                                  fontWeight: FontWeight.w500)),
                            ]
                            ),
                            );
}

Widget buildPhone(){
  return Padding(
                          padding: EdgeInsets.all(20.0),
                          child:  
                          Column(
                            children: <Widget> [
                        new Text("Phone Number:",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 21.0,
                                  fontFamily: "Quicksand",
                                  fontWeight: FontWeight.w500)),
                        new Text(globals.chosen.phone,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 21.0,
                                  fontFamily: "Quicksand",
                                  fontWeight: FontWeight.w500)),
                            ]
                            ),
                            );
}

Widget buildRating(){
  return Padding(
                          padding: EdgeInsets.all(20.0),
                          child:  
                          Column(
                            children: <Widget> [
                        new Text("Rating:",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 21.0,
                                  fontFamily: "Quicksand",
                                  fontWeight: FontWeight.w500)),
                        new Text(globals.chosen.rating.toString(),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 21.0,
                                  fontFamily: "Quicksand",
                                  fontWeight: FontWeight.w500)),
                            ]
                            ),
                            );
}
 
}


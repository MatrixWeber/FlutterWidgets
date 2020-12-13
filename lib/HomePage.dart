import 'package:flutter/material.dart';
import 'Buttons.dart';

import 'Container Shadow.dart';
import 'Games.dart';
import 'Icons.dart';
import 'Animation.dart';

import 'ListView.dart';
import 'NaviBottom.dart';
import 'Test Page.dart';

import 'helper_function.dart';

// import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String changeText = "Привет";
  void onButtonTapped() {
    setState(() {
      changeText = 'Вы выбрали Zahl';
    });
  }

  void moveToAnimationPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AnimationPage()),
    );
  }

  void moveToBattonsPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ButtonsPage()),
    );
  }

  void moveToIconsPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => IconsPage()),
    );
  }

  void moveToGamesPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => GamesPage()),
    );
  }

  void moveToNavibottomPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Navibottom()),
    );
  }

  void moveToContainerShadow() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ContainerShadow()),
    );
  }

  void moveToListViewPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ListViewPage()),
    );
  }

  void moveToTestPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TestPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final text = Text("GuessPage", style: TextStyle(fontSize: 16));
    final text1 = Text("Buttons", style: TextStyle(fontSize: 16));
    final text2 = Text("Icons", style: TextStyle(fontSize: 16));
    final text3 = Text("Games", style: TextStyle(fontSize: 16));
    final text4 = Text("Navi Bottom", style: TextStyle(fontSize: 16));
    final text5 = Text("Container Shadow", style: TextStyle(fontSize: 16));
    final text6 = Text("ListView", style: TextStyle(fontSize: 16));
    final text7 = Text("Test Page", style: TextStyle(fontSize: 16));
    final stadiumBorder = StadiumBorder(
      side: BorderSide(color: Colors.blue),
    );

    final roundedShape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
      side: BorderSide(color: Colors.blue),
    );

    final beveledShape = BeveledRectangleBorder(
      borderRadius: BorderRadius.circular(16),
      side: BorderSide(color: Colors.blue),
    );
    final circleBorder = CircleBorder(
      side: BorderSide(color: Colors.blue),
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home Page'),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
      //   ],
      // ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("lib/assets/images/rough_horn.jpg"),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              TextField(decoration: InputDecoration(hintText: changeText)),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildRaisedButton(
                      shape: stadiumBorder,
                      child: text,
                      onPressed: moveToAnimationPage),
                  buildRaisedButton(
                      shape: stadiumBorder,
                      child: text1,
                      onPressed: moveToBattonsPage),
                  buildRaisedButton(
                      shape: stadiumBorder,
                      child: text2,
                      onPressed: moveToIconsPage),
                  buildRaisedButton(
                      shape: stadiumBorder,
                      child: text3,
                      onPressed: moveToGamesPage),
                  buildRaisedButton(
                      shape: stadiumBorder,
                      child: text4,
                      onPressed: moveToNavibottomPage),
                  buildRaisedButton(
                      shape: stadiumBorder,
                      child: text5,
                      onPressed: moveToContainerShadow),
                  buildRaisedButton(
                      shape: stadiumBorder,
                      child: text6,
                      onPressed: moveToListViewPage),
                  buildRaisedButton(
                      shape: stadiumBorder,
                      child: text7,
                      onPressed: moveToTestPage),

                  // RaisedButton(

                  //   onPressed: onButtonTapped,
                  //   child: Text("Zahl"),
                  // )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

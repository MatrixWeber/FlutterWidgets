import 'package:flutter/material.dart';
// import 'flutter_svg/flutter_svg.dart';

import 'Container Shadow.dart';

import 'helper_function.dart';
import 'hive.dart';

class GamesPage extends StatelessWidget {
  const GamesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void moveToHiveExample() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HiveExample()),
      );
    }

    void moveToContainerShadow() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ContainerShadow()),
      );
    }

    final text3 = Text("Loderunner", style: TextStyle(fontSize: 16));
    final text4 = Text("Button", style: TextStyle(fontSize: 16));
    final beveledShape = BeveledRectangleBorder(
      borderRadius: BorderRadius.circular(16),
      side: BorderSide(color: Colors.blue),
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Games"),
      ),
      body: Center(
        child: Container(
          // Transparent background
          decoration: BoxDecoration(
            color: const Color(0xff7c94b6),
            image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.dstATop),
              image: AssetImage("lib/assets/images/rough_horn.jpg"),
            ),
          ),
          // color: Colors.white,
          padding: EdgeInsets.all(20.0),
          alignment: Alignment.center,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildRaisedButton(
                  shape: beveledShape,
                  child: text3,
                  onPressed: moveToHiveExample),
              buildRaisedButton(
                  shape: beveledShape,
                  child: text4,
                  onPressed: moveToContainerShadow),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'Container Shadow.dart';
import 'HomePage.dart';

void main() => runApp(Glueckszahl());

class Glueckszahl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Start the app with the "/" named route. In this case, the app starts
        // on the FirstScreen widget.
        initialRoute: '/',
        routes: {
          // When navigating to the "/" route, build the FirstScreen widget.
          '/': (context) => HomePage(),
          // When navigating to the "/second" route, build the SecondScreen widget.
          '/shadow': (context) => ContainerShadow(),
        },
        debugShowCheckedModeBanner: false,
        title: 'Magig Theme',
        theme: ThemeData(primarySwatch: Colors.blue));
  }
}

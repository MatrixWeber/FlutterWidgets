import 'package:flutter/material.dart';

import 'helper_function.dart';

class ButtonsPage extends StatelessWidget {
  const ButtonsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final text = Text("SUBMIT", style: TextStyle(fontSize: 16));

    final stadiumBorder = StadiumBorder(
      side: BorderSide(color: Colors.blue),
    );
    final icon = Icon(Icons.mail);

    final roundedShape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
      side: BorderSide(color: Colors.blue),
    );
    final lessRoundedShape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
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
        title: const Text("Buttons"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildButtonRow(
              shape: stadiumBorder,
              child: text,
            ),
            buildButtonRow(
              shape: roundedShape,
              child: text,
            ),
            buildButtonRow(
              shape: lessRoundedShape,
              child: text,
            )
          ],
        ),
      ),
    );
  }

  Widget buildButtonRow(
          {@required Widget child, @required ShapeBorder shape}) =>
      Container(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildRaisedButton(child: child, shape: shape),
            const SizedBox(width: 16),
            buildFlatButton(child: child, shape: shape),
          ],
        ),
      );
}

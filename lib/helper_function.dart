import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';

// Function Show Dialog
createAlertDialog(BuildContext context, String iconName) {
  TextEditingController customController = TextEditingController();
  customController.text = "Привет";
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(iconName),
          // title: Text('Deine Name'),
          content: TextField(
            controller: customController,
          ),
          actions: <Widget>[
            MaterialButton(
              elevation: 5.0,
              child: Text('Exit'),
              onPressed: () {
                Navigator.of(context).pop(customController.text.toString());
              },
            ),
          ],
        );
      });
}

Widget buildButtonRow({@required Widget child, @required ShapeBorder shape}) =>
    Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildRaisedButton(child: child, shape: shape),
        ],
      ),
    );
Widget buildRaisedButton(
        {@required Widget child,
        @required ShapeBorder shape,
        Function onPressed}) =>
    RaisedButton(
      child: child,
      onPressed: () {
        onPressed();
      },
      shape: shape,
      color: Colors.blue,
      textColor: Colors.white,
    );

Widget buildFlatButton({@required Widget child, @required ShapeBorder shape}) =>
    FlatButton(
        child: child, onPressed: () {}, shape: shape, color: Colors.grey[350]);

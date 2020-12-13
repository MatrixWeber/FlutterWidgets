import 'package:flutter/material.dart';

class ListViewCard extends StatelessWidget {
  final String text;
  final Function(String) moveToPageFunction;

  const ListViewCard(
      {Key key, @required this.text, @required this.moveToPageFunction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        moveToPageFunction('/shadow');
      },
      child: Card(
        shape: StadiumBorder(
          side: BorderSide(
            color: Colors.black,
            width: 2.0,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(colors: [Colors.blue, Colors.white]),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                text,
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

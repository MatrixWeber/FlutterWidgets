import 'package:flutter/material.dart';

import 'Container Shadow.dart';
import 'list_view_card.dart';
import 'HomePage.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(centerTitle: true, title: const Text("List View")),
        body: Column(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey, border: Border.all(width: 3)),
                padding: EdgeInsets.all(16),
              ),
            ),
            Flexible(flex: 2, child: SimpleWidget(text: "Item")),
          ],
        ),
      ),
    );
  }
}

class SimpleWidget extends StatefulWidget {
  const SimpleWidget({Key key, @required this.text}) : super(key: key);
  @override
  _SimpleWidgetState createState() => _SimpleWidgetState();

  final String text;
}

class _SimpleWidgetState extends State<SimpleWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(20),
      // margin: EdgeInsets.all(),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black, width: 2)),
      child: ListView(
        children: getChildrenOfListViewCard(widget.text, 10),
      ),
    );
  }

  void moveToPage(String page) {
    Navigator.pushNamed(context, page);
  }

  List<Widget> getChildrenOfListViewCard(String text, num numOfElements) {
    List<Widget> list = [];
    for (var i = 1; i <= numOfElements; ++i) {
      list.add(
        ListViewCard(
          text: text + ": $i",
          moveToPageFunction: moveToPage,
        ),
      );
    }
    return list;
  }
}

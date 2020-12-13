import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(centerTitle: true, title: const Text("Test Page")),
        body: Container(
          padding: EdgeInsets.all(16),
          color: Colors.white,
        ),
      ),
    );
  }
}

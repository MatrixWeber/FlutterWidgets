import 'package:flutter/material.dart';

class ContainerShadow extends StatelessWidget {
  const ContainerShadow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:
            AppBar(centerTitle: true, title: const Text("Container Shadow")),
        body: SimpleWidget(),
      ),
    );
  }
}

class SimpleWidget extends StatefulWidget {
  @override
  _SimpleWidgetState createState() => _SimpleWidgetState();
}

class _SimpleWidgetState extends State<SimpleWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          'Panda',
          style: TextStyle(fontSize: 40, color: Colors.white),
        ),
        height: 250,
        width: double.infinity,
        margin: EdgeInsets.all(20),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.blue, Colors.red]),
            // borderRadius: BorderRadius.circular(20),
            // border: Border.all(color: Colors.blue, width: 8)),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                  color: Colors.black45,
                  offset: Offset(-5, 5),
                  blurRadius: 5,
                  spreadRadius: 5)
            ]),
      ),
    );
  }
}

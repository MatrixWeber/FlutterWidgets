import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {
  AnimationPage({Key key}) : super(key: key);

  @override
  _AnimationPage createState() => _AnimationPage();
}

class _AnimationPage extends State<AnimationPage> {
  var _color = Colors.blue;
  var _heigth = 100.0;
  var _width = 100.0;
  var _isFirstCrossFadeEnabled = false;
  var _isFirstCrossFadeEnabled1 = false;

  @override
  Widget build(BuildContext context) {
    animaitedContainer() {
      setState(() {
        _color = _color == Colors.blue ? Colors.red : Colors.blue;
        _heigth = _heigth == 100 ? 200 : 100;
        _width = _width == 100 ? 200 : 100;
      });
    }

    animateCrossFade() {
      setState(() {
        _isFirstCrossFadeEnabled = !_isFirstCrossFadeEnabled;
      });
    }

    animateCrossFade1() {
      setState(() {
        _isFirstCrossFadeEnabled1 = !_isFirstCrossFadeEnabled1;
      });
    }

    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Guess')),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("lib/assets/images/nature.jpg"),
              fit: BoxFit.cover),
        ),
        // Image.asset('lib/assets/images/Waterfall.jpg'), //   <-- image
        padding: EdgeInsets.all(20.0),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            AnimatedContainer(
              duration: Duration(seconds: 1),
              curve: Curves.bounceIn,
              color: _color,
              height: _heigth,
              width: _width,
            ),
            OutlineButton(
              borderSide: BorderSide(
                color: Colors.red,
              ),
              color: Colors.blue,
              child: Text('Animate Container'),
              onPressed: () {
                animaitedContainer();
              },
            ),
            AnimatedCrossFade(
              duration: Duration(milliseconds: 3000),
              firstChild: Container(
                child: Image.asset("lib/assets/images/apple_gold-png.png"),
                // child: Image.asset("lib/assets/images/apple_logo_grey.png"),
                // child: Image.asset("lib/assets/images/emoji1.png"),
                height: 150.0,
                width: 150.0,
              ),
              secondChild: Container(
                // child: Image.asset("lib/assets/images/emoji2.png"),
                child: Image.asset("lib/assets/images/Android2.png"),
                height: 150.0,
                width: 150.0,
              ),
              crossFadeState: _isFirstCrossFadeEnabled
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
            ),
            OutlineButton(
              color: Colors.blue,
              borderSide: BorderSide(
                color: Colors.red,
              ),
              // textColor: BmsColors.primaryForegroundColor,
              // borderSide: BorderSide(
              // color: BmsColors.primaryForegroundColor, width: 2.0),
              // shape: new RoundedRectangleBorder(
              //   borderRadius: new BorderRadius.circular(8.0),
              // ),
              child: Text('Animated CrossFade'),
              onPressed: () {
                animateCrossFade();
              },
            ),
            AnimatedCrossFade(
              duration: Duration(milliseconds: 2000),
              firstChild: Container(
                // child: Image.asset("lib/assets/images/apple_gold-png.png"),
                // child: Image.asset("lib/assets/images/apple_logo_grey.png"),
                child: Image.asset("lib/assets/images/emoji1.png"),
                height: 150.0,
                width: 150.0,
              ),
              secondChild: Container(
                child: Image.asset("lib/assets/images/emoji2.png"),
                // child: Image.asset("lib/assets/images/Android2.png"),
                height: 150.0,
                width: 150.0,
              ),
              crossFadeState: _isFirstCrossFadeEnabled1
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
            ),
            OutlineButton(
              borderSide: BorderSide(
                color: Colors.red,
              ),
              child: Text('Animated CrossFade'),
              onPressed: () {
                animateCrossFade1();
              },
            ),
          ],
        ),
      ),
    );
  }
}

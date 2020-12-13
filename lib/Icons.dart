import 'package:flutter/material.dart';

import 'helper_function.dart';

final icon = Icon(Icons.mail);

class IconsPage extends StatelessWidget {
  const IconsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget iconShowDialog(
            {@required String iconName,
            @required Widget child,
            @required CircleBorder shape,
            @required Function(BuildContext, String) onPressed,
            @required BuildContext context}) =>
        RaisedButton(
            color: Colors.blue,
            shape: shape,
            child: child,
            onPressed: () {
              onPressed(context, iconName);
            });
    final text2 = Text("Icons", style: TextStyle(fontSize: 16));
    final circleBorder = CircleBorder(
      side: BorderSide(color: Colors.orange),
    );
    // ___________
    final icon = Icon(
      Icons.mail,
    );
    final icon1 = Icon(Icons.access_alarm);
    final icon2 = Icon(Icons.access_time);
    final icon3 = Icon(Icons.accessibility);
    final icon4 = Icon(Icons.accessible_sharp);
    final icon5 = Icon(Icons.account_balance);
    final icon6 = Icon(Icons.account_box);
    final icon7 = Icon(Icons.account_circle);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Icons'),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.blue, Colors.red])),
          width: 500,
          height: 700,
          child: Wrap(
            alignment: WrapAlignment.spaceBetween,
            // crossAxisAlignment: WrapCrossAlignment.center,
            runAlignment: WrapAlignment.center,
            direction: Axis.horizontal,
            children: [
              iconShowDialog(
                iconName: 'icon: mail',
                onPressed: createAlertDialog,
                context: context,
                shape: circleBorder,
                child: icon,
              ),
              iconShowDialog(
                iconName: 'icon: access_alarm',
                shape: circleBorder,
                child: icon1,
                onPressed: createAlertDialog,
                context: context,
              ),
              iconShowDialog(
                iconName: 'icon: access_time',
                shape: circleBorder,
                child: icon2,
                onPressed: createAlertDialog,
                context: context,
              ),
              iconShowDialog(
                iconName: 'icon: accessibility',
                shape: circleBorder,
                child: icon3,
                onPressed: createAlertDialog,
                context: context,
              ),
              iconShowDialog(
                iconName: 'icon: accessible_sharp',
                shape: circleBorder,
                child: icon4,
                onPressed: createAlertDialog,
                context: context,
              ),
              iconShowDialog(
                iconName: 'icon: account_balance',
                shape: circleBorder,
                child: icon5,
                onPressed: createAlertDialog,
                context: context,
              ),
              iconShowDialog(
                iconName: 'icon: account_box',
                shape: circleBorder,
                child: icon6,
                onPressed: createAlertDialog,
                context: context,
              ),
              iconShowDialog(
                iconName: 'icon: account_circle',
                shape: circleBorder,
                child: icon7,
                onPressed: createAlertDialog,
                context: context,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

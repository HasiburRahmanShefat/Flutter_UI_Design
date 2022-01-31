import 'dart:async';

import 'package:flutter/cupertino.dart';

import 'login.dart';

class screen extends StatefulWidget {
  const screen({Key? key}) : super(key: key);

  @override
  _screenState createState() => _screenState();
}

class _screenState extends State<screen> {
  void initState() {
    Timer(Duration(seconds:3), () {
      Navigator.push(
          context, CupertinoPageRoute(builder: (context) => MyLogin()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        transformAlignment: Alignment.center,
          height: 800,
          width: 320,

          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/sp5.png'), fit: BoxFit.cover))),
    );
  }
}

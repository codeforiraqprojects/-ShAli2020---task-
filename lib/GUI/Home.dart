//الصفحة الريئسية============

import 'package:flutter/material.dart';
import 'package:mytask/GUI/listpage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF202020),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 400.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                    image: AssetImage("assat/cash2.jpg"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.black26.withOpacity(0.6), BlendMode.darken)),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            RaisedButton(
                color: Colors.orangeAccent,
                child: Text(
                  "دخول",
                  style: TextStyle(
                      fontSize: 30.0,
                      wordSpacing: 1.0,
                      fontWeight: FontWeight.w400),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return new Listpag();
                    }),
                  );
                }),
          ]),
    );
  }
}

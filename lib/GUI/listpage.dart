

import 'package:flutter/material.dart';
import 'package:mytask/GUI/DashboardPag.dart';
class Listpag extends StatefulWidget {
  @override
  _ListpagState createState() => _ListpagState();
}

class _ListpagState extends State<Listpag> {
  var selectItem=0;
  List children=[
    DashboardPag(),
    DashboardPag(),
    DashboardPag(),
    DashboardPag(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF202020),
      body: children[selectItem],

    );
  }
}

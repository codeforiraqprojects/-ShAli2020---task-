
//=======صفحة التفاصيل=======

import'package:flutter/material.dart';
import 'package:mytask/GUI/Home.dart';
import 'package:mytask/GUI/listpage.dart';
class DetailPag extends StatefulWidget {
  final imgPath,title;
  DetailPag({this.imgPath,this.title});
  @override
  _DetailPagState createState() => _DetailPagState();
}

class _DetailPagState extends State<DetailPag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF202020),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 20.0,),
          Padding(padding: EdgeInsets.all(15.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height:40.0 ,width: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    color: Colors.orangeAccent,
                  ),
                  child: Center(
                    child: InkWell(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return new Listpag();}),);
                    },
                        child: Icon(Icons.arrow_back_ios,color: Colors.white,)),
                  ),
                ),
                Center(child: Text(widget.title,
                  style:
                  TextStyle(fontSize: 17.0,wordSpacing: 1.0,fontWeight: FontWeight.w400,color: Colors.white),)),
//
                Container(
                    height:40.0 ,width: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.0),
                      color: Colors.orangeAccent,
                    ),
                    child: InkWell( onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return new Home();}),);},
                        child: Icon(Icons.home,color: Colors.white,))),

              ],
            ),),

          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
               image: AssetImage(widget.imgPath),
                   fit:BoxFit.fitWidth),
              )
            ),

        ],
      ),
    );
  }
}

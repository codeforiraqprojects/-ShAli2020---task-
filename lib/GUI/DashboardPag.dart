//====== صفحة المقالات =======

import 'package:flutter/material.dart';
import 'package:mytask/GUI/Home.dart';
import 'package:mytask/GUI/detialpag.dart';
class DashboardPag extends StatefulWidget {
  @override
  _DashboardPagState createState() => _DashboardPagState();
}

class _DashboardPagState extends State<DashboardPag> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
                    return new Home();}),);
                },
                    child: Icon(Icons.arrow_back_ios,color: Colors.white,)),
              ),
            ),
            Center(child: Text("المقالات",
              style:
              TextStyle(fontSize: 30.0,wordSpacing: 1.0,fontWeight: FontWeight.w400,color:Colors.white),)),

                        Container(
              height:40.0 ,width: 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                color: Colors.orangeAccent,
              ),
                    child: Icon(Icons.search,color: Colors.white,)),

          ],
        ),),
        SizedBox(height: 10.0,),
        Container(
height: MediaQuery.of(context).size.height - 150.0,
        child: ListView(
          children: <Widget>[
            _buildListItem("assat/p1.jpg","نصائح لتعزيز مهاراتك في التحدث أمام جمهور  ",
                "                   "
            ),
            _buildListItem("assat/p2.jpg","كلام جميل عن الطفل",""),
            _buildListItem("assat/p3.jpg","أجمل حدائق الورود والأزهار في العالم",""),
            _buildListItem("assat/p4.jpg","حقيقة وفاة كاظم الساهر في بيروت",""),

      ],),),]
    );
  }
  _buildListItem(String imgPath,String Title, String deccription){
return Padding(padding: EdgeInsets.all(15.0),
child: Stack(
children: <Widget>[
  Container(
    height: 300.0,
  ),
  Container(
    height: 300.0,
    decoration: BoxDecoration(
     borderRadius: BorderRadius.circular(10.0),
     image:DecorationImage(image: AssetImage(imgPath),
       fit: BoxFit.cover,
       colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.darken)
    ),
  ),),
  Container(
    height: 300.0,
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(Title,style:
      TextStyle(fontSize: 20.0,wordSpacing: 1.0,fontWeight: FontWeight.w400,color:Colors.white),),
                    Text(deccription,style:
                    TextStyle(fontSize: 30.0,wordSpacing: 1.0,fontWeight: FontWeight.bold,color:Colors.white),),
                     SizedBox(height: 20.0,),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return new DetailPag(imgPath:imgPath, title:Title);}) );           },
            child: Container(
              height: 40.0,width: 100.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),

              child: Center(
                child: Text("التفاصيل",
                  style:
                TextStyle(fontSize: 15.0,wordSpacing: 1.0,fontWeight: FontWeight.w400,color:Colors.black),),

            ),
          ),),
        ],
      ),
    ),
  )
],
),);
  }
}

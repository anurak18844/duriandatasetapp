import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homeScreen.dart';

class ChkInterneAndAPI extends StatefulWidget {
  const ChkInterneAndAPI({Key? key}) : super(key: key);

  @override
  _ChkInterneAndAPIState createState() => _ChkInterneAndAPIState();
}

class _ChkInterneAndAPIState extends State<ChkInterneAndAPI> {

  @override
  Widget build(BuildContext context) {


    double width = MediaQuery.of(context).copyWith().size.width;
    double height = MediaQuery.of(context).copyWith().size.height;
    Color colorTeal = Colors.teal;
    Color colorWhiteShade = Colors.white60;
    double fontSize = 18;
    Color colorBlackShade = Colors.black26;


    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: width,
        height: height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildWifi(250, 55, Colors.white),
            buildWifi(220, 55, Colors.white),
            buildWifi(120, 55, Colors.white),
            GestureDetector(
              child: Container(
                margin: EdgeInsets.only(top: 80),
                alignment: Alignment.center,
                width: 270,
                height: 75,
                child: buildText("กดปุ่มนี้เพื่อเข้าใช้งาน", colorTeal, fontSize),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                  border:Border.all(
                    color: colorTeal,
                    width: 3
                  )
                ),
              ),
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: buildText("กดปุ่มด้านบนเพื่อทดสอบการเชื่อมต่อ \n อินเทอร์เน็ตและ API", colorWhiteShade, fontSize-2)
            )
          ],
        )
      )
    );
  }

 Widget buildWifi(double width,double height, Color color,){
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: color,
        boxShadow: [
          BoxShadow(
              color: Colors.teal,
              offset: Offset(4,4),
              blurRadius: 2,
              spreadRadius: 1.0
          )
        ]
      ),
    );
 }

 Widget buildText(String text,Color color,double fontsize,){
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: fontsize,
        color: color,
        fontFamily: 'Roboto'
      ),
    );
 }
}
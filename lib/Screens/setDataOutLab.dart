import 'package:avatar_glow/avatar_glow.dart';
import 'package:dariandatasetapp/Utils/Slider/sliderForResponse.dart';
import 'package:dariandatasetapp/Utils/Slider/sliderForSetdata.dart';
import 'package:dariandatasetapp/Utils/globalVariable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SetDataOutLab extends StatefulWidget {
  const SetDataOutLab({Key? key}) : super(key: key);

  @override
  _SetDataOutLabState createState() => _SetDataOutLabState();
}

class _SetDataOutLabState extends State<SetDataOutLab> {

  bool _status = false;
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).copyWith().size.width;
    double height = MediaQuery.of(context).copyWith().size.height;
    Color colorTeal = Colors.teal;
    Color colorWhiteShade = Colors.white60;
    double fontSize = 18;
    Color colorBlackShade = Colors.black26;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        color: Colors.white12,
        width: width,
        height: height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: height*.02),
                child: AvatarGlow(
                  duration: Duration(milliseconds: 2000),
                  repeat: true,
                  animate: _status,
                  glowColor: colorTeal,
                  endRadius: 150,
                  child: buildSoundButtonIcon(),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 0,bottom: 20,left: 10),
                width: width,
                child: Text('ค่าความสุกที่ทำนายได้',style: TextStyle(color: colorBlackShade,fontSize: fontSize+2),textAlign: TextAlign.start,),
              ),
              SliderForResponse(),
              Container(
                margin: EdgeInsets.only(top: 5,bottom: 20,left: 10),
                width: width,
                child: Text('กำหนดค่าความสุก',style: TextStyle(color: colorBlackShade,fontSize: fontSize+2),textAlign: TextAlign.start,),
              ),
              SliderForSetdata(),
              GestureDetector(
                child: Container(
                  margin: EdgeInsets.only(top: 20,bottom: 25),
                  alignment: Alignment.center,
                  width: 270,
                  height: 75,
                  child: buildText("บันทึกข้อมูล", colorTeal, fontSize),
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
                  print("SAVE DATA");
                  setState(() {
                    indexTopForShow  = 0;
                    indexTopForSet = 0;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSoundIcon(double width,double height, Color color,double top){
    return Container(
      margin: EdgeInsets.only(left: 5,right: 5,top: top),
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: color,
          boxShadow: [
            BoxShadow(
                color: Colors.teal.shade300,
                offset: Offset(4,4),
                blurRadius: 2,
                spreadRadius: 1.0
            )
          ]
      ),
    );
  }

  Widget buildSoundButtonIcon(){
    double heightCOntaianerSoundIcon = 170/2;
    return InkWell(
      child: Container(
        width: heightCOntaianerSoundIcon*2,
        height: heightCOntaianerSoundIcon*2,
        decoration: BoxDecoration(
            color: Colors.grey[200],
            border:Border.all(
                color: Colors.white60,
                width: 1
            ),
            borderRadius: BorderRadius.circular(300),
            boxShadow: [
            BoxShadow(
              color: Colors.grey.shade600,
              offset: Offset(4,4),
              blurRadius: 15,
              spreadRadius: 1
            ),
            BoxShadow(
                color: Colors.white,
                offset: Offset(-4,-4),
                blurRadius: 15,
                spreadRadius: 1
            )
          ]
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildSoundIcon(35/2, 60/2, Colors.teal,heightCOntaianerSoundIcon*.8),
            buildSoundIcon(35/2, 130/2, Colors.teal,heightCOntaianerSoundIcon*.50),
            buildSoundIcon(35/2, 200/2, Colors.teal,heightCOntaianerSoundIcon*.25),
            buildSoundIcon(35/2, 130/2, Colors.teal,heightCOntaianerSoundIcon*.75),
            buildSoundIcon(35/2, 75/2, Colors.teal,heightCOntaianerSoundIcon*.75),
          ],
        ),
      ),
      onTap: (){
        setState(() {
          if(_status){
            _status = false;
            print(_status);
            //หยุดบันทึก
            indexTopForShow = 5;
          }
          else{
            _status = true;
            print(_status);
            //เริ่มบันทึก
          }
        });
      },
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
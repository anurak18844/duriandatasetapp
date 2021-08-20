import 'package:avatar_glow/avatar_glow.dart';
import 'package:dariandatasetapp/Utils/Progress/proGress.dart';
import 'package:dariandatasetapp/Utils/Slider/sliderForResponse.dart';
import 'package:dariandatasetapp/Utils/Slider/sliderForSetdata.dart';
import 'package:dariandatasetapp/Utils/globalVariable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SetDataInLab extends StatefulWidget {
  const SetDataInLab({Key? key}) : super(key: key);

  @override
  _SetDataInLabState createState() => _SetDataInLabState();
}

class _SetDataInLabState extends State<SetDataInLab> {

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
                child: CircularProgress(),
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
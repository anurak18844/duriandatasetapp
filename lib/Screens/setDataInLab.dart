import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SetDataInLab extends StatefulWidget {
  const SetDataInLab({Key? key}) : super(key: key);

  @override
  _SetDataInLabState createState() => _SetDataInLabState();
}

class _SetDataInLabState extends State<SetDataInLab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 20),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.notifications_active_outlined,size: 50,),
            SizedBox(height: 20,),
            Text('Comming soon next version.!',style: TextStyle(fontSize: 20),),
          ],
        ),
      ),
    );
  }
}

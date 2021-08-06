import 'package:dariandatasetapp/Screens/setDataInLab.dart';
import 'package:dariandatasetapp/Screens/setDataOutLab.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{

  late TabController _controller;
  @override
  void initState() {
   _controller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {


    double width = MediaQuery.of(context).copyWith().size.width;
    double height = MediaQuery.of(context).copyWith().size.height;
    Color colorTeal = Colors.teal;
    Color colorWhiteShade = Colors.white60;
    double fontSize = 18;
    Color colorBlackShade = Colors.black26;

    return Scaffold(
      body: TabBarView(
        children: [
          SetDataOutLab(),
          SetDataInLab(),
        ],
        controller: _controller,

      ),
      bottomNavigationBar: Container(
        height: 90,
        child: DefaultTabController(
          length: 2,
          child: TabBar(
            indicatorColor: colorTeal,
            unselectedLabelColor: Colors.black26,
            labelColor: colorTeal,
            controller: _controller,
            tabs: [
              Tab(child: Text('เก็บข้อมูลนอกแล็บ',style: TextStyle(fontSize: fontSize),),icon: null,),
              Tab(child: Text('เก็บข้อมูลในแล็บ',style: TextStyle(fontSize: fontSize),),icon: null,),
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: colorBlackShade,
              offset: Offset(-3,0),
              blurRadius: 4,
              spreadRadius: 1
            )
          ]
        )
      )
    );
  }
}

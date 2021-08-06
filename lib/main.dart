import 'package:flutter/material.dart';

import 'Screens/checkNetworkAndAPI.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Durian Dataset App',
      theme: ThemeData.light(),
      home: ChkInterneAndAPI(),
    );
  }
}

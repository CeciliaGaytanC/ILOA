import 'package:flutter/material.dart';


class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialApp(
debugShowCheckedModeBanner: false,
title: "ejemplo",
theme: ThemeData(primaryColor: Colors.blueGrey,),
home: Scaffold(
  appBar:  AppBar(
    leading: Icon(Icons.home),
    title: Text("ejem")
),
   ),
   );
  }

}


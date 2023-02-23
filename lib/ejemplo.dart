import 'package:flutter/material.dart';


class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialApp(
debugShowCheckedModeBanner: false,
title: "ejemplo",
theme: ThemeData(primaryColor: Colors.blueGrey,),
home: _ejemplooo()
   );
  }

}
Widget _ejemplooo(){
  return  Scaffold(
  appBar:  AppBar(
    leading: Icon(Icons.home),
    title: Text("ejem")
),
   );


}




//home:  Scaffold(
//   appBar:  AppBar(
//     leading: Icon(Icons.home),
//     title: Text("ejem")
// ),
//    ),
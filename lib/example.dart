import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';




class Home extends StatelessWidget {
  //const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:  false,
      title:  "Registro",
      theme:  ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading:  Icon(Icons.home),
          title: Text("Ejemplo")
        ),
        body: Stack (
          children:  <Widget>[
            // _imagenFondo(),
            _textoCentro(),
          ],
          
        ),
       
         ),
  
    );
  }
// Widget _imagenFondo() {
//   return Image(
//     image:  AssetImage("assets/image/wp.jpeg"),
//   height:  double.infinity,
//   width: double.infinity,
//   fit:  BoxFit.cover,
//   );
// }



 
  Widget _textoCentro() {
    return Center(
      child: Container(
        height: 100,                
        color: Color.fromRGBO(0, 0, 0, 0.5),
        child: Center(
          child: Text('Login', style: TextStyle(fontSize: 40, color: Colors.white)),
        ),
      ),

    );
  }

}






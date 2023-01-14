import 'package:flutter/material.dart';

class Home extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),        
        title: Text('Platzi'),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          _imagenFondo(),
          _textoCentral(),
        ],      
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>{},
        
      ),
    );
  }


  Widget _imagenFondo() {
    return Image(
      image: AssetImage('assets/image/wp.jpg'),
      height: double.infinity,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }

 
 
 
 
 
 
 
 
 
 
 
  Widget _textoCentral() {
    return Center(
      child: Container(
        height: 100,                
        color: Color.fromRGBO(0, 0, 0, 0.5),
        child: Center(
          child: Text('Naughty', style: TextStyle(fontSize: 40, color: Colors.white)),
        ),
      ),

    );
  }


}
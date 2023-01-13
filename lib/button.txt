import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

void main() => runApp(Botonazo());

class Botonazo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      
  bottomNavigationBar: ConvexAppBar(
    items: [
      TabItem(icon: Icons.home, title: 'Inicio'),
      TabItem(icon: Icons.map, title: 'Recetas'),
      TabItem(icon: Icons.add, title: 'Añadir receta'),
      TabItem(icon: Icons.message, title: 'Chat'),
      TabItem(icon: Icons.people, title: 'Perfil'),
    ],
    initialActiveIndex: 2,//optional, default as 0
    onTap: (int i) => print('click index=$i'),
  )



    );
  }
}
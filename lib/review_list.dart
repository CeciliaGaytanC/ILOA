import 'package:flutter/material.dart';
import 'package:today/review.dart';

class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/ann.jpg", "Cecilia", "2 review Â· 5 photos", "There is an amazing place in Sri Lanka"),
        Review("assets/img/ann.jpg", "Cecilia", "2 review Â· 5 photos", "There is an amazing place in Sri Lanka"),
        Review("assets/img/ann.jpg", "Cecilia", "2 review Â· 5 photos", "La paleta de leche es un tradicional"),
      ],
    );


  }


}
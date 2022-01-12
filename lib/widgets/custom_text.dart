import 'package:flutter/cupertino.dart';

Widget customText(String text,double size,Color color,FontWeight weight){
  return Text(
    text,
    style: TextStyle(
      fontSize: size,
      fontWeight: weight,
        color: color
    ),

  );
}
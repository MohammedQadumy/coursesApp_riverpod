import 'package:flutter/material.dart';

Widget textNormal({ required String text , required double size , required Color textColor}){
  return Text(text,style: TextStyle(
      color:textColor,
      fontSize: size,
      fontWeight: FontWeight.normal
  ),
    textAlign : TextAlign.center,
  );
}

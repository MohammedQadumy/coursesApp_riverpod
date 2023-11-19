import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

Widget textNormal({ required String text , required double size , required Color textColor}){
  return Text(text,style: TextStyle(
      color:textColor,
      fontSize: size,
      fontWeight: FontWeight.normal
  ),
    textAlign : TextAlign.center,
  );
}

Widget textUnderLine(){
  return GestureDetector(
    onTap: () {
    },
    child: Text("Forgot password ?" , style: TextStyle(
      color: AppColors.primaryText,
      decoration: TextDecoration.underline,
      decorationColor: AppColors.primaryText,
      fontWeight: FontWeight.normal,
        fontSize: 14
    ),),
  );
}
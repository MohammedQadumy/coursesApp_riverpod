
import 'package:ecommerce_riverpod/common/utils/app_colors.dart';
import 'package:ecommerce_riverpod/common/widgets/image_widgets.dart';
import 'package:ecommerce_riverpod/common/widgets/text_widgets.dart';
import 'package:flutter/material.dart';

import '../../../common/widgets/app_shadow.dart';

AppBar BuildAppBar(){
  return AppBar(
    bottom: PreferredSize(preferredSize: Size.fromHeight(1), child: Container(
      height: 1,
    )),
    title: Center(child: textNormal(text: "Login", size: 16, textColor: AppColors.primaryText)),
  );
}

Widget thirdPartyLogin(){
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 90,vertical: 35),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _loginButton("assets/icons/google.png"),
        _loginButton("assets/icons/apple.png"),
        _loginButton("assets/icons/facebook.png")
      ],
    ),
  );
}

Widget _loginButton(String imagePath){
  return GestureDetector(
    onTap: () {

    },
    child: Container(
      width: 40,
      height: 40,
      child: Image.asset(imagePath),
    ),
  );
}

Widget appTextField({required String text , String iconName= "" , String hintText = "",  bool isPassword = false}){
 return Container(
   padding: EdgeInsets.only(left: 25,right: 25),
   child: Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       textNormal(text: text, size: 14, textColor: AppColors.primarySecondaryElementText),
       Container(
         margin: EdgeInsets.symmetric(vertical: 5),
         height: 50,
         width: 400,
         decoration: appBoxTextField(color :AppColors.primaryFourElementText),
         child: Row(
           children: [
             Container(
               margin: EdgeInsets.only(left: 10)
               ,child: appImage(imagePath: iconName),
             ),
             Container(
               width: 320,
               height: 50,
               margin: EdgeInsets.only(left: 5),
               child: TextField(
                 keyboardType: TextInputType.multiline,
                 decoration: InputDecoration(
                   hintText: hintText,
                   border: InputBorder.none
                   ),
                 obscureText: isPassword,
               ),
             )
           ],
         ),
       )
     ],
   ),
 );
}
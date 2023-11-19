import 'package:ecommerce_riverpod/common/utils/app_colors.dart';
import 'package:ecommerce_riverpod/common/widgets/app_shadow.dart';
import 'package:ecommerce_riverpod/common/widgets/text_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget appButton({
  required String buttonText,
  required Color buttonBackGroundColor,
  required Color buttonTextColor,
  Color buttonBordersColor = Colors.transparent,
  double width = 325,
  double height = 50,
}) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      width: 325,
      height: 50,
      decoration: appBoxShadow(color: buttonBackGroundColor , border: Border.all(
        color: buttonBordersColor,
      )),
      child: Center(
          child:
              textNormal(text: buttonText, size: 16, textColor: buttonTextColor)),
    ),
  );
}

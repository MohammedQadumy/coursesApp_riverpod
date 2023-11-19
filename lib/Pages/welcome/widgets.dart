import 'package:ecommerce_riverpod/Pages/sign_in/sign_in.dart';
import 'package:ecommerce_riverpod/common/utils/app_colors.dart';
import 'package:ecommerce_riverpod/common/widgets/app_shadow.dart';
import 'package:flutter/material.dart';
import '../../common/widgets/text_widgets.dart';

Widget appOnboardingPage({String imagePath = "",
  required String title,
  required String subTitle,
  required PageController controller,
  index = 0,
  required BuildContext context
}) {
  return Column(
    children: [
      Image.asset(
        imagePath,
        fit: BoxFit.fitWidth,
      ),
      Container(
        child:
        textNormal(text: title, size: 24, textColor: AppColors.primaryText),
        margin: EdgeInsets.only(top: 15),
      ),
      Container(
        margin: EdgeInsets.only(top: 15),
        padding: EdgeInsets.only(left: 30, right: 30),
        child: textNormal(
            text: subTitle,
            size: 16,
            textColor: AppColors.primarySecondaryElementText),
      ),
      _nextButton(index, controller, context),
    ],
  );
}

Widget _nextButton(int index, PageController controller , BuildContext context) {
  return GestureDetector(
      onTap: ()
  {
    if (index < 3) {
      controller.animateToPage(index++,
          duration: Duration(milliseconds: 100), curve: Curves.easeIn);
    }else{
      Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn(),));
    }
  },
  child: Container(
  width: 325,
  height: 50,
  margin: EdgeInsets.only(top: 100, left: 25, right: 25),
  decoration: appBoxShadow(),
  child: Center(
  child: index<3?textNormal(text: "Next", size: 16, textColor: Colors.white):
  textNormal(text: "Get started", size: 16, textColor: Colors.white),
  ),
  ),
  );
  }

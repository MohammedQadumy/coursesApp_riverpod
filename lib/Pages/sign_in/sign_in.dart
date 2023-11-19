import 'package:ecommerce_riverpod/Pages/sign_in/widgets/sign_in_widgets.dart';
import 'package:ecommerce_riverpod/common/widgets/text_widgets.dart';
import 'package:flutter/material.dart';

import '../../common/utils/app_colors.dart';
import '../../common/widgets/button_widget.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
          child: Scaffold(
              appBar: BuildAppBar(),
              backgroundColor: Colors.white,
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    thirdPartyLogin(),
                    Center(
                      child: textNormal(
                          text: "Or use your email account to login",
                          size: 14,
                          textColor: AppColors.primarySecondaryElementText),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    appTextField(
                      text: "Email",
                      iconName: "assets/icons/user.png",
                      hintText: "Write in your Email",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    appTextField(
                        text: "Password",
                        iconName: "assets/icons/lock.png",
                        hintText: "Write in your Password",
                        isPassword: true),
                    Container(
                        margin: EdgeInsets.only(left: 25, top: 25),
                        child: textUnderLine()),
                    SizedBox(
                      height: 100,
                    ),
                    Center(
                      child: appButton(
                        buttonText: "Log In",
                        buttonBackGroundColor: AppColors.primaryElement,
                        buttonTextColor: AppColors.primaryBackground,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: appButton(
                          buttonText: "Sign Up",
                          buttonBackGroundColor: AppColors.primaryBackground,
                          buttonTextColor: AppColors.primaryElement,
                      buttonBordersColor: Colors.grey.withOpacity(0.2)),
                    )
                  ],
                ),
              ))),
    );
  }
}

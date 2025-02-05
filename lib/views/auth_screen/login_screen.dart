import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/views/auth_screen/signup_screen.dart';
import 'package:emart_app/views/home_screen/home_screen.dart';
import 'package:emart_app/widgets_common/applogo_widget.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';
import 'package:emart_app/widgets_common/our_button.dart';
import 'package:flutter/material.dart';
import 'package:emart_app/widgets_common/custom_textfield.dart';
import 'package:emart_app/views/auth_screen/signup_screen.dart'; // Import your SignupScreen
import 'package:get/get.dart';



class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              (context.screenHeight * 0.1).heightBox,
              applogoWidget(),
              10.heightBox,
              "Log in to $appname".text.fontFamily(bold).white.size(18).make(),
              18.heightBox,
              Column(
                children: [
                  CustomtextField(hint: emailhint, title: email),
                  20.heightBox,
                  CustomtextField(hint: passwordhint, title: password),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: forgetpassword.text.make(),
                    ),
                  ),
                  5.heightBox,
                  OurButton(
                    color: redColor,
                    title: login,
                    textColor: whiteColor,
                    onPress: () {
                      Get.to(() => HomeScreen());
                    },
                  ).box.width(context.screenWidth - 50).make(),
                  5.heightBox,
                  createNewAccount.text.color(fontGrey).make(),


                  5.heightBox,
                  OurButton(
                    color: redColor,
                    title: signup, // Now correctly shows 'signup'
                    textColor: whiteColor,
                    onPress: () {
                      Get.to(() => const SignupScreen()); // Navigate to SignupScreen
                    },
                  ).box.width(context.screenWidth - 50).make(),


          10.heightBox,
                  loginWith.text.color(fontGrey).make(),
                  10.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...List.generate(
                        3,
                            (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0), // Add padding between icons
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent, // Optional: customize CircleAvatar properties
                            child: Image.asset(socialIconList[index]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ).box.white.rounded.padding(EdgeInsets.all(16)).width(context.screenWidth - 60).shadowSm.make(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/views/auth_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../consts/lists.dart';
import '../../widgets_common/applogo_widget.dart';
import '../../widgets_common/bg_widget.dart';
import '../../widgets_common/custom_textfield.dart';
import '../../widgets_common/our_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isChecked = false; // Track the checkbox state

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
              "Join The $appname".text.fontFamily(bold).white.size(18).make(),
              18.heightBox,
              Column(
                children: [
                  CustomtextField(hint: namehint, title: name),
                  CustomtextField(hint: emailhint, title: email),
                  CustomtextField(hint: passwordhint, title: password),
                  CustomtextField(hint: passwordhint, title: retypepass),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: forgetpassword.text.make(),
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        checkColor: whiteColor, // The check color inside the box
                        activeColor: redColor, // The color of the filled box when checked
                        value: isChecked,
                        onChanged: (newValue) {
                          setState(() {
                            isChecked = newValue ?? false;
                          });
                        },
                      ),
                      10.heightBox,
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "I agree to the ",
                                style: TextStyle(fontFamily: bold, color: Colors.black),
                              ),
                              TextSpan(
                                text: termAndCond,
                                style: TextStyle(
                                  fontFamily: bold,
                                  color: Colors.blue,
                                ),
                              ),
                              TextSpan(
                                text: " & ",
                                style: TextStyle(
                                  fontFamily: bold,
                                  color: Colors.redAccent,
                                ),
                              ),
                              TextSpan(
                                text: privacyPolicy,
                                style: TextStyle(
                                  fontFamily: bold,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  5.heightBox,
                  OurButton(
                    color: redColor,
                    title: signup,
                    textColor: whiteColor,
                    onPress: () {
                      // Navigate to SignupScreen
                      //Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                    },
                  ).box.width(context.screenWidth - 50).make(),
                  14.heightBox,
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: alreadyAccount,
                          style: TextStyle(
                            fontFamily: bold,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: login,
                          style: TextStyle(
                            fontFamily: bold,
                            color: Colors.red,
                          ),
                        )
                      ],
                    ),
                    
                  ).onTap(() {
                    Get.back();
                  }),

                ],
              ).box.white.rounded.padding(EdgeInsets.all(16)).width(context.screenWidth - 60).shadowSm.make(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:emart_app/views/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'consts/consts.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //we are using getx



    return GetMaterialApp(
      title: appname,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
        appBarTheme:const AppBarTheme(
          backgroundColor: Colors.transparent,
        ),
          fontFamily: regular,
      ),
      home: const SplashScreen(),
    );
  }
}

import 'package:emart_app/consts/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget OurButton({ onPress, color , textColor,String? title}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: color, // Use backgroundColor instead of primary
      padding: EdgeInsets.all(12),
    ),
    onPressed:onPress,
    child: login.text.white.fontFamily(bold).make(),
  );
}

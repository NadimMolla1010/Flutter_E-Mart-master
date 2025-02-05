import 'package:emart_app/consts/consts.dart';
import 'package:flutter/cupertino.dart';

Widget bgWidget({Widget? child}) {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(imgBackground),
        fit: BoxFit.fill,
      ),
    ),
    child: child,  // Place the child widget here
  );
}

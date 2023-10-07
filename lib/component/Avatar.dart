import 'package:flutter/material.dart';

Widget CustomAvatar (BuildContext context){
  final avatarSize = MediaQuery.of(context).size;
  final screenWidth = MediaQuery.of(context).size;

  return Container(
    foregroundDecoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/images/pacarku.png"),
      ),
      borderRadius: BorderRadius.all(Radius.circular(50)),
      border: Border.all(
        color: Color(0xF0000000), // Border color
        width: 1,
      ),
    ),
    width: avatarSize.width * 0.12,
    height: avatarSize.width * 0.12,
  );
}

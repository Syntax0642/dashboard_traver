import 'package:flutter/material.dart';

Widget SearchBars (BuildContext context){
  final margin = MediaQuery.of(context).size;
  return Container(
    margin: EdgeInsets.all(margin.width * 0.02),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.0),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 5,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: TextField(
    decoration: InputDecoration(
    hintText: 'Search...',
    border: InputBorder.none,
    suffixIcon: Icon(Icons.search),
    ),
    ),
  );
}

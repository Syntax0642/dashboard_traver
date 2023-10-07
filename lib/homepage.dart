import 'package:dashboard_traver/reuse_component/CustomText.dart';
import 'component/TimeText.dart';
import 'package:flutter/material.dart';
import 'component/Avatar.dart';
import 'reuse_component/CustomIcon.dart';
import 'component/SearchBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final mediaSize =  MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.only(left: mediaSize.width * 0.045, right: mediaSize.width * 0.045 ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(height: mediaSize.height * 0.18,),
                  CustomAvatar(context),
                  SizedBox(width: mediaSize.width * 0.05,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTexts(text: "Welcome Back Marsha !", color: Colors.black, fontSize: 15, fontFamily: "", fontWeight: FontWeight.w600, letterSpacing: 0),
                      SizedBox(height: mediaSize.height * 0.002,),
                      TextTimes(context),
                    ],
                  ),
                 Spacer(flex: 2,),
                  CustomIcons(iconData: Icons.notifications_none_outlined, size: 38, color: Colors.black)
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTexts(text: "Where do you ", color: Colors.black, fontSize: 24, fontFamily: "", fontWeight: FontWeight.bold, letterSpacing: 0),
                  SizedBox(height: mediaSize.height * 0.001,),
                  CustomTexts(text: "want to explore today?", color: Colors.black, fontSize: 24, fontFamily: "", fontWeight: FontWeight.bold, letterSpacing: 0)
                ],
              ),
              SearchBars(context),
              SizedBox(height: mediaSize.height * 0.002,),
              Row(
                children: [
                  CustomTexts(text: "Category", color: Colors.black, fontSize: 18, fontFamily: "", fontWeight: FontWeight.bold, letterSpacing: 0),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

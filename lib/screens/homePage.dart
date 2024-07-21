import 'package:flutter/material.dart';
import 'package:uhv_app/communityService/homePage_CS.dart';
import 'package:uhv_app/heartistry/homePage_HT.dart';
import 'package:uhv_app/moralMentor/homePage_mm.dart';
import 'package:uhv_app/prepPal/homePag_PP.dart';
import 'package:uhv_app/rightsQuest/homePage_RQ.dart';

import '../conflictResolution/homepage_CR.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => homePage_mm()),
              );
            },
            child: Container(
              child: Text("Moral Mentor"),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => homePage_RQ()),
              );
            },
            child: Container(
              child: Text("Rights Quest"),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => homePage_CS()),
              );
            },
            child: Container(
              child: Text("Community Service"),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => homePage_CR()),
              );
            },
            child: Container(
              child: Text("Conflict Resolution"),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => homePage_PP()),
              );
            },
            child: Container(
              child: Text("PrePal"),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => homePage_HT()),
              );
            },
            child: Container(
              child: Text("Heartistry"),
            ),
          ),
        ],
      ),
    );
  }
}

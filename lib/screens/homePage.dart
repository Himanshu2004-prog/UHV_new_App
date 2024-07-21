import 'package:flutter/material.dart';
import 'package:uhv_app/communityService/homePage_CS.dart';
import 'package:uhv_app/heartistry/homePage_HT.dart';
import 'package:uhv_app/moralMentor/homePage_mm.dart';
import 'package:uhv_app/prepPal/homePag_PP.dart';
import 'package:uhv_app/rightsQuest/homePage_RQ.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

import '../conflictResolution/homepage_CR.dart';

class homePage extends StatelessWidget {
  final FirebaseAnalytics analytics;
  const homePage({super.key, required this.analytics});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          InkWell(
            onTap: () {
              analytics.logEvent(
                  name: "pages_tracked",
                  parameters: {"page_name": "Moral Mentor"});
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
              analytics.logEvent(
                  name: "pages_tracked",
                  parameters: {"page_name": "RightsQuest"});
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
              analytics.logEvent(
                  name: "pages_tracked",
                  parameters: {"page_name": "Community Service"});
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
              analytics.logEvent(
                  name: "pages_tracked",
                  parameters: {"page_name": "Conflict Resolution"});
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
              analytics.logEvent(
                  name: "pages_tracked", parameters: {"page_name": "PrepPal"});
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
              analytics.logEvent(
                  name: "pages_tracked",
                  parameters: {"page_name": "Heartistry"});
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

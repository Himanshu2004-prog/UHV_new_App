import 'package:flutter/material.dart';
import 'package:uhv_app/ecoResolve/homePage_ER.dart';
import 'package:uhv_app/heartistry/homePage_HT.dart';
import 'package:uhv_app/moralMentor/homePage_mm.dart';
import 'package:uhv_app/prepPal/homePag_PP.dart';
import 'package:uhv_app/rightsQuest/homePage_RQ.dart';
class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          InkWell(
            onTap: (){
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => homePage_mm()),
            );},
            child: Container(
              child: Text("Moral Mentor"),

            ),
          ),InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => homePage_RQ()),
              );},
            child: Container(
              child: Text("Rights Quest"),

            ),
          ),InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => homePage_PP()),
              );},
            child: Container(
              child: Text("PrePal"),

            ),
          ),InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => homePage_HT()),
              );},
            child: Container(
              child: Text("Heartistry"),

            ),
          ),InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => homePage_ER()),
              );},
            child: Container(
              child: Text("Eco Resolve"),

            ),
          ),
        ],
      ),
    );
  }
}


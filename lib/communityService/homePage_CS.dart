import 'package:flutter/material.dart';
import 'package:uhv_app/communityService/mobile/com_chatscreen_mob.dart';

class homePage_CS extends StatefulWidget {
  const homePage_CS({super.key});

  @override
  State<homePage_CS> createState() => _homePage_CSState();
}

class _homePage_CSState extends State<homePage_CS> {
  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
            key: scaffoldKey,
            backgroundColor: const Color(0xFF001120),
            appBar: AppBar(title: const Text("Community Service")),
            body: const ComChatScreenMob());
      },
    );
  }
}

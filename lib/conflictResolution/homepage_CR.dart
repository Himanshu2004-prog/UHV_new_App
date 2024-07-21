import 'package:flutter/material.dart';
import 'package:uhv_app/conflictResolution/mobile/conf_chatscreen_mob.dart';

class homePage_CR extends StatefulWidget {
  const homePage_CR({super.key});

  @override
  State<homePage_CR> createState() => _homePage_CRState();
}

class _homePage_CRState extends State<homePage_CR> {
  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
            key: scaffoldKey,
            backgroundColor: const Color(0xFF001120),
            appBar: AppBar(
              title: const Text("Conflict Resolution"),
            ),
            body: const ConfChatScreenMob());
      },
    );
  }
}

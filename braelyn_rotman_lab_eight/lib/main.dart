import 'package:flutter/material.dart';
import './view/pages/bottom_tab_bar_scaffold.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';

import 'core/models/schedule.dart';


void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ScheduleModel(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Lab Eight - Braelyn Rotman",
      home: BottomTabBarScaffold(),
    );
  }
}

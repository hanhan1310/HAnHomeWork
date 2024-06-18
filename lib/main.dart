import 'package:flutter/material.dart';
import 'package:project_buoi_13/GridViewDemo/demo_grid_view.dart';
import 'package:project_buoi_13/GridViewDemo/test_cards_game.dart';
import 'package:project_buoi_13/list_view/tesr.dart';
import 'package:project_buoi_13/list_view/test.dart';
import 'package:project_buoi_13/login_screen.dart';
import 'package:project_buoi_13/screen.dart';

import 'GridViewDemo/grid_view_chest.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Demo_Grid_View(),
    );
  }
}

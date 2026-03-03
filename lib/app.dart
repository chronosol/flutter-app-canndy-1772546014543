import 'package:flutter/material.dart';
import 'package:canndy/screens/game_screen.dart';

class CanndyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Canndy',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: GameScreen(),
    );
  }
}

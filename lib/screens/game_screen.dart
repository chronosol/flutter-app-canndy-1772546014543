import 'package:flutter/material.dart';
import 'package:canndy/widgets/game_board.dart';

class GameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Canndy Crush'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GameBoard(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:canndy/models/game_model.dart';

class GameBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => GameModel(),
      child: Consumer<GameModel>(
        builder: (context, gameModel, child) {
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: gameModel.gridSize,
              childAspectRatio: 1.0,
            ),
            itemCount: gameModel.gridSize * gameModel.gridSize,
            itemBuilder: (context, index) {
              int row = index ~/ gameModel.gridSize;
              int column = index % gameModel.gridSize;
              return GestureDetector(
                onTap: () => gameModel.selectTile(row, column),
                child: Container(
                  margin: EdgeInsets.all(2.0),
                  decoration: BoxDecoration(
                    color: gameModel.getTileColor(row, column),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

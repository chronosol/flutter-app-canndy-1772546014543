import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class GameModel extends ChangeNotifier {
  final int gridSize = 8;
  final Random _random = Random();
  List<List<Color>> _grid;

  GameModel() : _grid = List.generate(8, (i) => List.generate(8, (j) => _randomColor()));

  Color getTileColor(int row, int column) => _grid[row][column];

  void selectTile(int row, int column) {
    // Handle tile selection and potential match logic
    notifyListeners();
  }

  static Color _randomColor() {
    // Generate a random color
    List<Color> colors = [Colors.red, Colors.green, Colors.blue, Colors.yellow, Colors.purple];
    return colors[Random().nextInt(colors.length)];
  }
}

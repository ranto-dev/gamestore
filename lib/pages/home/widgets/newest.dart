import 'package:flutter/material.dart';
import 'package:gamestore/models/game.dart';

class NewestGame extends StatelessWidget {
  NewestGame({super.key});
  final List<Game> games = Game.games();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.red,
      child: Column(
        children: games
            .map(
              (game) => Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(game.icon, width: 60),
                  ),
                ],
              ),
            )
            .toList(),
      ),
    );
  }
}

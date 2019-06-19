import 'package:flutter/material.dart';
import 'package:game_socialmedia_app/model/game.dart';
import 'package:game_socialmedia_app/styleguide/colors.dart';

class GameNameWidget extends StatelessWidget {
  final Game game;

  GameNameWidget({this.game});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: primaryColor,
      elevation: 24.0,
      child: Text(
        game.title
      ),
    );
  }
}
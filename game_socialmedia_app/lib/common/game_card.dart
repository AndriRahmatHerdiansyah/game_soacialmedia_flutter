import 'package:flutter/material.dart';
import 'package:game_socialmedia_app/model/game.dart';

class GameCard extends StatelessWidget {
  final Game game;

  const GameCard({this.game});
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280.0,
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 50.0),
        elevation: 20.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(18.0))
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(18.0)),
          child: Stack(
            children: <Widget>[
              Image.asset(
                game.imagePath,
                fit: BoxFit.fitHeight
              )
            ],
          ),
        ),
      ),
    );
  }
}
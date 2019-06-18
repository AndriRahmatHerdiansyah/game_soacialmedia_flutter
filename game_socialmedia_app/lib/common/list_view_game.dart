import 'package:flutter/material.dart';
import 'package:game_socialmedia_app/common/game_card.dart';
import 'package:game_socialmedia_app/model/game.dart';
import 'package:game_socialmedia_app/model/game.dart';

class ListViewGame extends StatefulWidget {
  @override
  _ListViewGameState createState() => _ListViewGameState();
}

class _ListViewGameState extends State<ListViewGame> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600.0,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 80.0, left: 24.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                GameCard(game: zeldaGame),
                GameCard(game: overwatchGame),
                GameCard(game: apexLegendGame),
              ],
            ),
          )
        ],
      ),
    );
  }
}
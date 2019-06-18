import 'package:flutter/material.dart';
import 'package:game_socialmedia_app/common/app_background.dart';
import 'package:game_socialmedia_app/common/list_view_game.dart';
// import 'package:game_socialmedia_app/styleguide/colors.dart';

class LandingPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          AppBackground(),
          Align(
            alignment: Alignment.center,
            child: ListViewGame(),
          )
        ],
      ),

      bottomNavigationBar: BottomAppBar(
        child: Container(height: 50.0,),
      ),
    );
  }
}
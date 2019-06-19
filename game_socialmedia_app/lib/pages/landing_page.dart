import 'package:flutter/material.dart';
import 'package:game_socialmedia_app/common/app_background.dart';
import 'package:game_socialmedia_app/common/list_view_game.dart';
import 'package:game_socialmedia_app/styleguide/text_styles.dart';
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
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24, bottom: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 80.0,
                ),
                Text(
                  'Wellcome Andri',
                  style: wellconeTextStyle
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    'Explore most popular game in the world',
                    style: headingStyle,
                  ),
                )
              ],
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomAppBar(
        child: Container(height: 50.0,),
      ),
    );
  }
}
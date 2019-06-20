import 'package:flutter/material.dart';
import 'package:game_socialmedia_app/common/app_background.dart';
import 'package:game_socialmedia_app/common/list_view_game.dart';
import 'package:game_socialmedia_app/styleguide/colors.dart';
import 'package:game_socialmedia_app/styleguide/text_styles.dart';
// import 'package:game_socialmedia_app/styleguide/colors.dart';

class LandingPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

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
                  padding: const EdgeInsets.only(top: 10.0, bottom: 16.0),
                  child: Text(
                    'Explore most popular game in the world',
                    style: headingStyle,
                  ),
                ),
                Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  child: TextField(
                    cursorColor: primaryColor,
                    textInputAction: TextInputAction.search,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 14.0),
                      hintText: 'Search for the game...',
                      border: InputBorder.none,
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Material(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          color: primaryColor,
                          child: Icon(Icons.search, color: Colors.white),
                        ),
                      )
                    ),
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
import 'package:flutter/material.dart';
import 'package:game_socialmedia_app/styleguide/colors.dart';

class AppBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint){
        final height = constraint.maxHeight;
        final width = constraint.maxWidth;
        var assetsImage = new AssetImage("assets/images/bgImage.png");
        var image = new Image(image: assetsImage);
        return  Stack(
          children: <Widget>[
            Container(
              color: backgroundColor,
            ),
            
            Positioned(
              child: Container(
                child: image
              ),
            ),
            // background image
            Positioned(
              bottom: 410,
              child: Container(
                height: height,
                width: height,
                color: rectangleBgColor,
              ),
            )
          ],
        );
      },
    );
  }
}
import 'package:flutter/material.dart';
import 'package:game_socialmedia_app/model/game.dart';

class RatingStar extends StatelessWidget {
  final Game game;

  RatingStar(this.game);
  

  Widget _buildRatingBar(ThemeData theme) {
    var stars = <Widget>[];

    for (var i = 1; i <= 5; i++) {
      var color = i <= game.rating ? theme.accentColor : Colors.black12;
      var star = Icon(
        Icons.star,
        color: color,
      );

      stars.add(star);
    }

    return Row(children: stars);
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var textTheme = theme.textTheme;
    var ratingCaptionStyle = textTheme.caption.copyWith(color: Colors.black45);

    var starRating = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildRatingBar(theme),
        Padding(
          padding: const EdgeInsets.only(top: 4.0, left: 4.0),
          child: Text(
            'Grade now',
            style: ratingCaptionStyle,
          ),
        ),
      ],
    );

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(width: 16.0),
        starRating,
      ],
    );
  }
}
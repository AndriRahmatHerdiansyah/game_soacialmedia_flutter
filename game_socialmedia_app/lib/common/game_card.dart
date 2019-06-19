import 'package:flutter/material.dart';
import 'package:game_socialmedia_app/common/rating_star.dart';
import 'package:game_socialmedia_app/model/game.dart';
import 'package:game_socialmedia_app/styleguide/colors.dart';
import 'package:game_socialmedia_app/styleguide/text_styles.dart';


class GameCard extends StatelessWidget {
  final Game game;

  const GameCard({Key key, this.game}) : super(key: key);

  Widget _buildRatingBar(ThemeData theme) {
    var stars = <Widget>[];

    for (var i = 1; i <= 5; i++) {
      var color = i <= game.rating ? Colors.amber : Colors.black12;
      var star = Icon(
        Icons.star,
        color: color,
      );

      stars.add(star);
    }

    return Row(
      children: stars
    );
  }
  
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    var starRating = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildRatingBar(theme)
      ],
    );

    return SizedBox(

      width: 280.0,
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 50.0),
        // elevation: 20.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(18.0))
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(18.0)),
          child: Stack(
            children: <Widget>[
              Image.asset(
                game.imagePath,
                fit: BoxFit.fitWidth
              ),
              Positioned(
                left: 0,
                bottom: 0,
                right: 0,
                child: Container(
                  height: 128.0,
                  color: Colors.white,
                ),
              ),

              // Category Label
              Positioned(
                left: 0,
                bottom: 140.0,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 30.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 1.2),
                          borderRadius: BorderRadius.all(Radius.circular(20.0))
                        ),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 22.0,
                              vertical: 6.0
                            ),
                            child: Text(
                              game.category,
                              style: labelTextStle,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),

              // Name game widget
              Positioned(
                left: 0,
                bottom: 78.0,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 16.0, bottom: 8.0),
                  child: Text(
                    game.title,
                    style: subHeadingStyle,
                  ),
                ),
              ),

              // provider widget
              Positioned(
                left: 0,
                bottom: 55.0,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 16.0, bottom: 8.0),
                  child: Text(
                    game.provider,
                    style: bodyTextStyle,
                  ),
                ),
              ),

              Positioned(
                left: 0,
                bottom: 20,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      starRating,
                    ],
                  ),
                ),
              ),

              Positioned(
                right: 0,
                bottom: 15,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 16.0, bottom: 8.0),
                  child: Text(
                    game.review,
                    style: reviewTextStyle,
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

// class StarDisplay extends GameCard {
//   const StarDisplay({Key key, int value = 0})
//       : super(
//           key: key,
//           value: value,
//           filledStar: const Icon(Icons.star, color: Colors.amber,),
//           unfilledStar: const Icon(Icons.star_border),
//         );
// }


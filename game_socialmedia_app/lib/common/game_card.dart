import 'package:flutter/material.dart';
import 'package:game_socialmedia_app/model/game.dart';
import 'package:game_socialmedia_app/styleguide/colors.dart';
import 'package:game_socialmedia_app/styleguide/text_styles.dart';


class GameCard extends StatelessWidget {
  final Game game;
  final int value;
  final Widget filledStar;
  final Widget unfilledStar;

  const GameCard({
    Key key,
    this.value = 0,
    @required this.filledStar,
    @required this.unfilledStar, this.game,
  })  : assert(value != null),
        super(key: key);
  
  
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
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(5, (index) {
                      return Icon(
                        index < value ? Icons.star : Icons.star_border,
                      );
                    }),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class StarDisplay extends GameCard {
  const StarDisplay({Key key, int value = 0})
      : super(
          key: key,
          value: value,
          filledStar: const Icon(Icons.star),
          unfilledStar: const Icon(Icons.star_border),
        );
}

class StarRating extends StatelessWidget {
  final void Function(int index) onChanged;
  final int value;
  final IconData filledStar;
  final IconData unfilledStar;

  const StarRating({
    Key key,
    @required this.onChanged,
    this.value = 0,
    this.filledStar,
    this.unfilledStar,
  })  : assert(value != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).accentColor;
    final size = 36.0;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return IconButton(
          onPressed: onChanged != null
              ? () {
                  onChanged(value == index + 1 ? index : index + 1);
                }
              : null,
          color: index < value ? color : null,
          iconSize: size,
          icon: Icon(
            index < value ? filledStar ?? Icons.star : unfilledStar ?? Icons.star_border,
          ),
          padding: EdgeInsets.zero,
          tooltip: "${index + 1} of 5",
        );
      }),
    );
  }
}
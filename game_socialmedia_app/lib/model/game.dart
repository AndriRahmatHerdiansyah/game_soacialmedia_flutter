class Game{
  final String title;
  final String category;
  final String imagePath;
  final String provider;
  final String review;

  Game({this.title, this.category, this.imagePath, this.provider, this.review});
  
}


final zeldaGame = Game(
  title: "The legend of zelda", 
  category: "Adventure", 
  imagePath: "assets/images/zelda.png", 
  provider: "Nintendo, Capcom", 
  review: "5,2K Review"
);

final overwatchGame = Game(
  title: "Overwatch Game", 
  category: "FPS", 
  imagePath: "assets/images/overwatch.png", 
  provider: "Blizzard Enterteiment", 
  review: "5,2K Review"
);

final apexLegendGame = Game(
  title: "Apek Legend Game", 
  category: "FPS", 
  imagePath: "assets/images/apexlegend.png", 
  provider: "Electronic Arts", 
  review: "5,2K Review"
);

final game = [
  zeldaGame,
  overwatchGame,
  apexLegendGame
];
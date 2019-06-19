class Game{
  final String title;
  final String category;
  final String imagePath;
  final String provider;
  final int rating;
  final String review;

  Game({this.title, this.category, this.imagePath, this.provider, this.rating, this.review});
  
}


final zeldaGame = Game(
  title: "The legend of zelda", 
  category: "Adventure", 
  imagePath: "assets/images/zelda.png", 
  provider: "Nintendo, Capcom",
  rating: 4, 
  review: "5,2K Review"
);

final overwatchGame = Game(
  title: "Overwatch Game", 
  category: "FPS", 
  imagePath: "assets/images/overwatch.png", 
  provider: "Blizzard Enterteiment", 
  rating: 3, 
  review: "1,2K Review"
);

final apexLegendGame = Game(
  title: "Apek Legend Game", 
  category: "FPS", 
  imagePath: "assets/images/apexlegend.png", 
  provider: "Electronic Arts", 
  rating: 4, 
  review: "8,2K Review"
);

final game = [
  zeldaGame,
  overwatchGame,
  apexLegendGame
];
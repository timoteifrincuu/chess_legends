enum PlayerEra { all, classic, modern }

class ChessPlayer {
  final String id;
  final String name;
  final String imagePath;
  final String description; 
  final String country;
  final PlayerEra era;
  final int age; 
  final int maxElo; 

  ChessPlayer({
    required this.id,
    required this.name,
    required this.imagePath,
    required this.description,
    required this.country,
    required this.era,
    required this.age,
    required this.maxElo,
  });
}
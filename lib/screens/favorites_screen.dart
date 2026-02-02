import 'package:flutter/material.dart';
import '../models/player_model.dart';
import '../widgets/player_card.dart';
import '../common/strings.dart'; 
import 'details_screen.dart';

class FavoritesScreen extends StatelessWidget {
  final List<ChessPlayer> favoritePlayers;
  final List<String> favoriteIds;
  final Function(String) onToggleFavorite;

  const FavoritesScreen({
    super.key,
    required this.favoritePlayers,
    required this.favoriteIds,
    required this.onToggleFavorite,
  });

  @override
  Widget build(BuildContext context) {
    if (favoritePlayers.isEmpty) {
      return const Center(child: Text(AppStrings.noFavorites));
    }

    return ListView.builder(
      itemCount: favoritePlayers.length,
      itemBuilder: (context, index) {
        final player = favoritePlayers[index];
        return PlayerCard(
          player: player,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(
                  player: player,
                  isFavorite: true,
                  onToggleFavorite: onToggleFavorite,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
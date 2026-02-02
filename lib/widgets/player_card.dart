import 'package:flutter/material.dart';
import '../models/player_model.dart';

class PlayerCard extends StatelessWidget {
  final ChessPlayer player;
  final VoidCallback onTap;

  const PlayerCard({
    super.key,
    required this.player,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 2,
      child: ListTile(
        contentPadding: const EdgeInsets.all(8),
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(player.imagePath),
          onBackgroundImageError: (_, __) => const Icon(Icons.person),
        ),
        title: Text(
          player.name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text('${player.country} • ${player.era == PlayerEra.classic ? "Clasic" : "Modern"}'),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: onTap,
      ),
    );
  }
}
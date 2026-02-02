import 'package:flutter/material.dart';
import '../models/player_model.dart';
import '../data/mock_data.dart';
import '../widgets/player_card.dart';
import '../common/strings.dart'; 
import 'details_screen.dart';

class HomeScreen extends StatefulWidget {
  final List<String> favoriteIds;
  final Function(String) onToggleFavorite;

  const HomeScreen({
    super.key,
    required this.favoriteIds,
    required this.onToggleFavorite,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String searchQuery = "";
  PlayerEra selectedEra = PlayerEra.all;

  @override
  Widget build(BuildContext context) {
    final filteredPlayers = MockData.players.where((player) {
      final matchesSearch = player.name.toLowerCase().contains(searchQuery.toLowerCase());
      final matchesEra = selectedEra == PlayerEra.all || player.era == selectedEra;
      return matchesSearch && matchesEra;
    }).toList();

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(
                  labelText: AppStrings.searchHint, 
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    searchQuery = value;
                  });
                },
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildFilterChip(AppStrings.filterAll, PlayerEra.all),
                  const SizedBox(width: 8),
                  _buildFilterChip(AppStrings.filterClassic, PlayerEra.classic),
                  const SizedBox(width: 8),
                  _buildFilterChip(AppStrings.filterModern, PlayerEra.modern),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: filteredPlayers.length,
            itemBuilder: (context, index) {
              final player = filteredPlayers[index];
              return PlayerCard(
                player: player,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        player: player,
                        isFavorite: widget.favoriteIds.contains(player.id),
                        onToggleFavorite: widget.onToggleFavorite,
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildFilterChip(String label, PlayerEra era) {
    return ChoiceChip(
      label: Text(label),
      selected: selectedEra == era,
      onSelected: (bool selected) {
        if (selected) {
          setState(() {
            selectedEra = era;
          });
        }
      },
    );
  }
}
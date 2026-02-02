import 'package:flutter/material.dart';
import '../models/player_model.dart';
import '../common/strings.dart';
import '../utils/app_utils.dart';

class DetailsScreen extends StatefulWidget {
  final ChessPlayer player;
  final bool isFavorite;
  final Function(String) onToggleFavorite;

  const DetailsScreen({
    super.key,
    required this.player,
    required this.isFavorite,
    required this.onToggleFavorite,
  });

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  late bool _isFavoriteLocal;

  @override
  void initState() {
    super.initState();
    _isFavoriteLocal = widget.isFavorite;
  }

  @override
  Widget build(BuildContext context) {
    final eraColor = AppUtils.getEraColor(widget.player.era);
    final eraLabel = AppUtils.getEraLabel(widget.player.era);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.player.name),
        actions: [
          IconButton(
            icon: Icon(
              _isFavoriteLocal ? Icons.star : Icons.star_border,
              color: _isFavoriteLocal ? Colors.amber : null,
              size: 30,
            ),
            onPressed: () {
              setState(() {
                _isFavoriteLocal = !_isFavoriteLocal;
              });
              widget.onToggleFavorite(widget.player.id);
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Imaginea
            Image.asset(
              widget.player.imagePath,
              width: double.infinity,
              height: 350,
              fit: BoxFit.cover,
              errorBuilder: (ctx, err, stack) => const SizedBox(
                  height: 300, 
                  child: Center(child: Text(AppStrings.imageError))
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Sectiunea de Informatii Cheie (Grid 2x2 vizual)
                  Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    children: [
                      _buildInfoChip(Icons.flag, widget.player.country, Colors.blue.shade100),
                      _buildInfoChip(Icons.history_edu, eraLabel, eraColor),
                      _buildInfoChip(Icons.cake, '${widget.player.age} ${AppStrings.labelYears}', Colors.orange.shade100),
                      _buildInfoChip(Icons.timeline, '${AppStrings.labelElo} ${widget.player.maxElo}', Colors.purple.shade100),
                    ],
                  ),
                  
                  const SizedBox(height: 24),
                  
                  // Titlu Biografie
                  const Text(
                    AppStrings.bioTitle, 
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)
                  ),
                  const Divider(thickness: 2),
                  
                  // Text Biografie
                  Text(
                    widget.player.description, 
                    style: const TextStyle(fontSize: 16, height: 1.6),
                    textAlign: TextAlign.justify,
                  ),
                  
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget ajutator pentru a afisa informatiile
  Widget _buildInfoChip(IconData icon, String label, Color bgColor) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 20, color: Colors.black87),
          const SizedBox(width: 8),
          Text(
            label, 
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.black87,  
            ),
          ),
        ],
      ),
    );
  }
}
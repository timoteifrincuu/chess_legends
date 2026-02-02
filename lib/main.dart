import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/favorites_screen.dart';
import 'data/mock_data.dart';
import 'common/strings.dart';

void main() {
  runApp(const ChessApp());
}

class ChessApp extends StatefulWidget {
  const ChessApp({super.key});

  @override
  State<ChessApp> createState() => _ChessAppState();
}

class _ChessAppState extends State<ChessApp> {
  ThemeMode _themeMode = ThemeMode.system;
  List<String> _favoriteIds = [];

  void _toggleTheme() {
    setState(() {
      _themeMode = _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  void _toggleFavorite(String playerId) {
    setState(() {
      if (_favoriteIds.contains(playerId)) {
        _favoriteIds.remove(playerId);
      } else {
        _favoriteIds.add(playerId);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appTitle,
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue, brightness: Brightness.light),
      darkTheme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue, brightness: Brightness.dark),
      themeMode: _themeMode,
      home: MainWrapper(
        toggleTheme: _toggleTheme,
        isDarkMode: _themeMode == ThemeMode.dark,
        favoriteIds: _favoriteIds,
        onToggleFavorite: _toggleFavorite,
      ),
    );
  }
}

class MainWrapper extends StatefulWidget {
  final VoidCallback toggleTheme;
  final bool isDarkMode;
  final List<String> favoriteIds;
  final Function(String) onToggleFavorite;

  const MainWrapper({
    super.key,
    required this.toggleTheme,
    required this.isDarkMode,
    required this.favoriteIds,
    required this.onToggleFavorite,
  });

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final favoritePlayers = MockData.players
        .where((p) => widget.favoriteIds.contains(p.id))
        .toList();

    final List<Widget> screens = [
      HomeScreen(
        favoriteIds: widget.favoriteIds,
        onToggleFavorite: widget.onToggleFavorite,
      ),
      FavoritesScreen(
        favoritePlayers: favoritePlayers,
        favoriteIds: widget.favoriteIds,
        onToggleFavorite: widget.onToggleFavorite,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.appTitle),
        actions: [
          IconButton(
            icon: Icon(widget.isDarkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: widget.toggleTheme,
          ),
        ],
      ),
      body: screens[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.list),
            label: AppStrings.tabPlayers, 
          ),
          NavigationDestination(
            icon: Icon(Icons.star),
            label: AppStrings.tabFavorites, 
          ),
        ],
      ),
    );
  }
}
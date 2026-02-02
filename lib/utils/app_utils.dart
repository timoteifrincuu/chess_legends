import 'package:flutter/material.dart';
import '../models/player_model.dart';
import '../common/strings.dart';

class AppUtils {
  // Returneaza culoarea potrivita in functie de Era
  static Color getEraColor(PlayerEra era) {
    switch (era) {
      case PlayerEra.classic:
        return Colors.blue.shade100;
      case PlayerEra.modern:
        return Colors.green.shade100;
      default:
        return Colors.grey.shade200;
    }
  }

  // Returneaza textul potrivit in functie de Era (folosind constantele din strings.dart)
  static String getEraLabel(PlayerEra era) {
    switch (era) {
      case PlayerEra.classic:
        return AppStrings.labelClassic;
      case PlayerEra.modern:
        return AppStrings.labelModern;
      default:
        return '';
    }
  }
}
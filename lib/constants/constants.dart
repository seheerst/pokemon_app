import 'dart:ui';

import 'package:flutter/material.dart';

class Constants {
  Constants._();
  static const String title = "Pokedex";

  static TextStyle getTitleStyle() {
    return const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 45,
    );
  }

  static const String pokemonUrl = "images/pokeball.png";
}

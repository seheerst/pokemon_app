import 'dart:ui';

import 'package:flutter/material.dart';

class Constants {
  Constants._();
  static const String title = "Pokedex";

  static TextStyle getTitleStyle() {
    return const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 48,
    );
  }

  static const String pokemonUrl = "images/pokeball.png";

  static TextStyle getPokeNameStyle() {
    return const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 30,
    );
  }

  static TextStyle getPokeTypeStyle() {
    return const TextStyle(
      color: Colors.white,
      fontSize: 20,
    );
  }
}

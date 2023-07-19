import 'package:flutter/material.dart';
import 'package:pokemon_app/services/pokedex_api.dart';
import 'package:pokemon_app/ui/widgets/appTitle.dart';
import 'package:pokemon_app/ui/widgets/pokemonList.dart';

import '../../models/pokemonModel.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppTitle(),
         const Expanded(child: PokemonList()),
        ],
      )
    );
  }
}

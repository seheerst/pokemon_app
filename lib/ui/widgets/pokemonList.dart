import 'package:flutter/material.dart';

import '../../models/pokemonModel.dart';
import '../../services/pokedex_api.dart';

class PokemonList extends StatefulWidget {
  const PokemonList({Key? key}) : super(key: key);

  @override
  State<PokemonList> createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {

  late Future<List<PokemonModel>> _pokemonList;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pokemonList = PokeApi.getPokemonData();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PokemonModel>>(
      future: _pokemonList,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<PokemonModel> _liste = snapshot.data!;

          return ListView.builder(
              itemCount: _liste.length,
              itemBuilder: (context, index){
                var gecerliPokemon = _liste[index];
                return ListTile(
                  title: Text(gecerliPokemon.name.toString()),
                );
              });
        } else if (snapshot.hasError) {
          return const Center(child: Text("hata çıktı"),);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}

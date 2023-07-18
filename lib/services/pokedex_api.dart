import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_app/models/pokemonModel.dart';

class PokeApi {
  static const String _url =
      "https://raw.githubusercontent.com/Biuni/PokemonGo-Pokedex/master/pokedex.json";

  static Future<List<PokemonModel>> getPokemonData() async {
    List<PokemonModel> _list = [];

    var result = await Dio().get(_url);
    var pokeList = jsonDecode(result.data)['pokemon'];

    if (pokeList is List) {
      _list = pokeList.map((e) => PokemonModel.fromJson(e)).toList();
    }
    debugPrint(_list.first.toString());
    return _list;
  }
}

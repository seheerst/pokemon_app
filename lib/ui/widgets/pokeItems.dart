import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon_app/constants/constants.dart';
import 'package:pokemon_app/models/pokemonModel.dart';

class PokeItems extends StatelessWidget {
  PokemonModel pokemon;
  PokeItems({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.w),
      ),
      elevation: 3,
      shadowColor: Colors.white,
      color: Colors.red.shade200,
      child: Column(children: [
        Text(pokemon.name!, style: Constants.getPokeNameStyle(),),
        Chip(label: Text(pokemon.type![0], style: Constants.getPokeTypeStyle(),))
      ],),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon_app/constants/constants.dart';
import 'package:pokemon_app/constants/ui_helper.dart';
import 'package:pokemon_app/models/pokemonModel.dart';
import 'package:pokemon_app/ui/widgets/pokeImage.dart';

class PokeItems extends StatelessWidget {
  PokemonModel pokemon;
  PokeItems({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.w),
      ),
      elevation: 2,
      shadowColor: Colors.white,
      color: UIHelper.getColorFromType(pokemon.type![0]),
      child: Padding(
        padding: UIHelper.getDefaultPadding(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(pokemon.name!, style: Constants.getPokeNameStyle(),),
          Chip(label: Text(pokemon.type![0], style: Constants.getPokeTypeStyle(),)),
            Expanded (child: PokeImage(pokemon: pokemon ))

        ],),
      ),
    );
  }
}

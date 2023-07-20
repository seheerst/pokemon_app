import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon_app/constants/constants.dart';

import '../../models/pokemonModel.dart';

class PokeName extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeName({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.05.sh),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
              Expanded(child: Text(pokemon.name!, style: Constants.PokeNameStyle(),)),
              Text('#${pokemon.num}',style: Constants.PokeNameStyle(),),
            ],
          ),
          SizedBox(height: 0.02.sh,),
          Chip(label: Text(pokemon.type!.join(' , '), style: Constants.getPokeTypeStyle() ,))
        ],
      ),
    );
  }
}

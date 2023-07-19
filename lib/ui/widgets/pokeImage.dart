import 'package:flutter/material.dart';
import 'package:pokemon_app/constants/constants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:pokemon_app/constants/ui_helper.dart';

import '../../models/pokemonModel.dart';

class PokeImage extends StatelessWidget {
  const PokeImage({Key? key, required this.pokemon}) : super(key: key);
  final PokemonModel pokemon;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(
            Constants.pokemonUrl,
            width: UIHelper.calculateImageSize(),
            height: UIHelper.calculateImageSize(),
            fit: BoxFit.fitHeight,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: CachedNetworkImage(imageUrl: pokemon.img!,width: UIHelper.calculateImageSize(),
            height: UIHelper.calculateImageSize(),
            fit: BoxFit.fitHeight,
            placeholder: (context, url) => const CircularProgressIndicator(color: Colors.red,),
          ),
        )
      ],
    );
  }
}

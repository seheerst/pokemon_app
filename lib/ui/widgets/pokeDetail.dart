import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon_app/constants/constants.dart';
import 'package:pokemon_app/constants/ui_helper.dart';

import '../../models/pokemonModel.dart';

class PokeDetail extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeDetail({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10.w),
          ),
          color: Colors.white),
      child: Padding(
        padding: UIHelper.getIconPadding(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildInformationRow("Name", pokemon.name!),
            _buildInformationRow("Weight", pokemon.weight!),
            _buildInformationRow("Height", pokemon.height!),
            _buildInformationRow("Spawn Time", pokemon.spawnTime!),
            _buildInformationRow("Weakness", pokemon.weaknesses),
            //_buildInformationRow("Pre Evolution", pokemon.prevEvolution),
            //_buildInformationRow("Next Evolution", pokemon.nextEvolution),
          ],
        ),
      ),
    );
  }

  _buildInformationRow(String label, dynamic value){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
          Text(label+": ", style: Constants.getInfoLabelStyle(),),
      //Text(value.toString())
      if(value is List && value.isNotEmpty)
        Text(value.join(','), style: Constants.getInfoTextStyle(),)
      else if( value == null)
        Text('Not available',style: Constants.getInfoTextStyle())
      else Text (value,style: Constants.getInfoTextStyle())

      ],
    );

  }
}

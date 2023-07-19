import 'package:flutter/material.dart';
import 'package:pokemon_app/constants/constants.dart';

class AppTitle extends StatelessWidget {
  AppTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
            alignment: Alignment.topLeft,
            child: Text(
              Constants.title,
              style: Constants.getTitleStyle(),
            )),
        Align(
          alignment: Alignment.topRight,
          child: Image.asset(
            Constants.pokemonUrl,
            width: 150,
            height: 150,
            fit: BoxFit.fitWidth,
          ),
        )
      ],
    );
  }
}

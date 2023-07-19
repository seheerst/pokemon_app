import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants {
  Constants._();
  static const String title = "Pokedex";

  static TextStyle getTitleStyle() {
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: _calculateFontSize(42),
    );
  }

  static const String pokemonUrl = "images/pokeball.png";

  static TextStyle getPokeNameStyle() {
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: _calculateFontSize(20),
    );
  }

  static TextStyle getPokeTypeStyle() {
    return  TextStyle(
      color: Colors.white,
      fontSize: _calculateFontSize(15),
    );
  }


  static _calculateFontSize(int size){
    if(ScreenUtil().orientation == Orientation.portrait){
      return size.sp;
    }else{
      return (size*0.65).sp;
    }
  }
}

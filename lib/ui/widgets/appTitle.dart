import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon_app/constants/constants.dart';
import 'package:pokemon_app/constants/ui_helper.dart';

class AppTitle extends StatelessWidget {
  AppTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: UIHelper.getAppTitleHeight(),
        child: Stack(
          children: [
            Padding(
              padding: UIHelper.getDefaultPadding(),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    Constants.title,
                    style: Constants.getTitleStyle(),
                  )),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                Constants.pokemonUrl,
                width: ScreenUtil().orientation == Orientation.portrait
                    ? 0.2.sh
                    : 0.2.sw,
                fit: BoxFit.fitWidth,
              ),
            )
          ],
        ),
      ),
    );
  }
}

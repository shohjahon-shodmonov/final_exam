import 'package:final_exam/core/constants/color_const.dart';
import 'package:final_exam/core/constants/size_config.dart';
import 'package:final_exam/core/extensions/mediaquery_exte.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.bgSplash,
      body: Column(
        children: [
          Center(
            child: SvgPicture.asset('assets/icons/splash_logo.svg'),
          ),
          Text(
            "O'RGAN APP",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

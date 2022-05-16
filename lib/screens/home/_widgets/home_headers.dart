import 'package:final_exam/core/constants/color_const.dart';
import 'package:flutter/material.dart';

class HomepageHeaders extends StatelessWidget {
  const HomepageHeaders({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Qanday darslar sizni qiziqtiradi?",
            style: TextStyle(
              color: ColorConst.instance.textColorPrimary,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "28 xil yo`nalishda darsliklar mavjud",
            style: TextStyle(
              color: ColorConst.instance.textColorSecondary,
              fontSize: 17,
            ),
          ),
        ],
      ),
    );
  }
}

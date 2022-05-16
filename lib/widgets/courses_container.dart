import 'package:final_exam/core/constants/color_const.dart';
import 'package:final_exam/core/constants/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CoursesContainer extends StatelessWidget {
  const CoursesContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      height: getH(140),
      width: getW(343),
      decoration: BoxDecoration(
        color: ColorConst.instance.bgContainer,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            height: getH(140),
            width: getW(140),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage('assets/images/ui_course.jpg'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Text(
                      "UX/UI nima? Soha haqida umumiy tushuncha.",
                      style: TextStyle(
                        color: ColorConst.instance.textColorPrimary,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    "Abbos Xazratov",
                    style: TextStyle(
                      color: ColorConst.instance.textColorSecondary,
                      fontSize: 15,
                    ),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "2 kun oldin yuklandi",
                        style: TextStyle(
                          color: ColorConst.instance.textColorSecondary,
                          fontSize: 14,
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/icons/play_button.svg',
                        fit: BoxFit.none,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

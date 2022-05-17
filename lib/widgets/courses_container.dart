import 'package:final_exam/core/constants/color_const.dart';
import 'package:final_exam/core/constants/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CoursesContainer extends StatelessWidget {
  CoursesContainer({Key? key, required this.data, required this.index}) : super(key: key);

  var data;
  int index;

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
                image: AssetImage(data['attributes']['img']['data']['attributes']['url']),
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
                      data['attributes']['title'],
                      style: TextStyle(
                        color: ColorConst.instance.textColorPrimary,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    data['attributes']['author'],
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
                        data['createdAt'],
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

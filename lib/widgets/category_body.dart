import 'package:final_exam/core/constants/color_const.dart';
import 'package:final_exam/core/constants/size_config.dart';
import 'package:flutter/material.dart';

class CategoryBody extends StatelessWidget {
  const CategoryBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/course');
          },
          child: Container(
            margin: EdgeInsets.only(top: 8.0),
            height: getH(211),
            width: getW(343),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: ColorConst.instance.bgContainer,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 8.0),
                  height: getH(132),
                  width: getW(329),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset('assets/images/uiux_dars.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "UI/UX dizayn",
                    style: TextStyle(
                      color: ColorConst.instance.textColorPrimary,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Boshlang'ich darajadagilar uchun",
                    style: TextStyle(
                      color: ColorConst.instance.textColorSecondary,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      itemCount: 3,
    );
  }
}

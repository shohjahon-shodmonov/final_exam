import 'package:final_exam/core/baseview/base_view.dart';
import 'package:final_exam/core/constants/color_const.dart';
import 'package:final_exam/core/constants/size_config.dart';
import 'package:final_exam/widgets/courses_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BaseView(
      viewModal: CoursePage,
      onPageBuilder: (context, widget) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black),
            title: Text(
              "UI/UX darslari",
              style: TextStyle(
                  color: ColorConst.instance.textColorPrimary,
                  fontWeight: FontWeight.bold),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/info.svg'),
              ),
            ],
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return InkWell(
                      child: CoursesContainer(),
                      onTap: () {
                        Navigator.pushNamed(context, '/content');
                      },
                    );
                  },
                  itemCount: 5,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
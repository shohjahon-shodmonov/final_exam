import 'package:final_exam/core/baseview/base_view.dart';
import 'package:final_exam/core/constants/color_const.dart';
import 'package:flutter/material.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModal: ContentPage,
      onPageBuilder: (context, widget) {
        return Scaffold(
          body: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.cyan,
                ),
              ),
              Expanded(
                flex: 1,
                child: Center(
                  child: Text(
                    "Figmada mobil ilova dizayni",
                    style: TextStyle(
                      color: ColorConst.instance.textColorPrimary,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Bu darsda biz siz bilan figma dasturida web saytuchun dizayn qilishni sinab ko`ramiz. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    style: TextStyle(
                      color: ColorConst.instance.textColorSecondary,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

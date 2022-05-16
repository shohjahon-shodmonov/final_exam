import 'package:final_exam/core/baseview/base_view.dart';
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
                flex: 7,
                child: Container(
                  
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

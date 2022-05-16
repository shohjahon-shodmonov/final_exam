import 'package:final_exam/core/baseview/base_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModal: HomePage,
      onPageBuilder: (context, widget) {
        return Scaffold(
          appBar: AppBar(title: Text("home")),
        );
      },
    );
  }
}

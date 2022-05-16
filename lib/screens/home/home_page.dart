import 'package:final_exam/core/baseview/base_view.dart';
import 'package:final_exam/core/components/input_decor.dart';
import 'package:final_exam/core/constants/color_const.dart';
import 'package:final_exam/core/constants/size_config.dart';
import 'package:final_exam/cubit/menu_cubit/menu_cubit.dart';
import 'package:final_exam/cubit/menu_cubit/menu_state.dart';
import 'package:final_exam/data/menu_bar_data.dart';
import 'package:final_exam/screens/home/_widgets/home_headers.dart';
import 'package:final_exam/screens/home/_widgets/searchbar.dart';
import 'package:final_exam/widgets/menu_bar_cont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MenuCubit(),
      child: BlocConsumer<MenuCubit, MenuState>(
        listener: (context, state) {},
        builder: (context, state) => homeScaffold(context),
      ),
    );
  }

  BaseView homeScaffold(BuildContext context) {
    SizeConfig().init(context);
    return BaseView(
      viewModal: HomePage,
      onPageBuilder: (context, widget) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomepageHeaders(),
                SearchBar(searchController: _searchController),
                MenuBarContainer(),
              ],
            ),
          ),
        );
      },
    );
  }
}


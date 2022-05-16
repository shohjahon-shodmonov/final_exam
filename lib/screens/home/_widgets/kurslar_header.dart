import 'package:final_exam/core/constants/color_const.dart';
import 'package:final_exam/cubit/menu_cubit/menu_cubit.dart';
import 'package:final_exam/cubit/menu_cubit/menu_state.dart';
import 'package:final_exam/data/menu_bar_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class KurslarHeader extends StatelessWidget {
  const KurslarHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MenuCubit(),
      child: BlocConsumer<MenuCubit, MenuState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: Text(
              "${MenuBarData.menuTitle[context.watch<MenuCubit>().menuIndex]}ga oid kurslar",
              style: TextStyle(
                color: ColorConst.instance.textColorPrimary,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        },
      ),
    );
  }
}

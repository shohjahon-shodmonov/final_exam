import 'package:final_exam/core/constants/color_const.dart';
import 'package:final_exam/core/constants/size_config.dart';
import 'package:final_exam/cubit/menu_cubit/menu_cubit.dart';
import 'package:final_exam/cubit/menu_cubit/menu_state.dart';
import 'package:final_exam/data/menu_bar_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuBarContainer extends StatelessWidget {
  MenuBarContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MenuCubit(),
      child: BlocConsumer<MenuCubit, MenuState>(
        listener: (context, state) {},
        builder: (context, state) => menuCont(context),
      ),
    );
  }

  menuCont(BuildContext context) {
    return SizedBox(
      height: getH(125),
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              context.read<MenuCubit>().changeMenuIndex(index);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.all(12),
                  height: getW(72),
                  width: getW(90),
                  decoration: BoxDecoration(
                    color: context.watch<MenuCubit>().menuIndex == index
                        ? ColorConst.instance.activeMenu
                        : ColorConst.instance.bgContainer,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: SvgPicture.asset(
                    MenuBarData.menuItems[index],
                    color: Colors.black,
                    fit: BoxFit.none,
                  ),
                ),
                Text(
                  MenuBarData.menuTitle[index],
                  style: TextStyle(
                    color: ColorConst.instance.textColorPrimary,
                    fontSize: 15,
                  ),
                )
              ],
            ),
          );
        },
        itemCount: 4,
      ),
    );
  }
}

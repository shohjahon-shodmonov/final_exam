import 'package:final_exam/core/components/input_decor.dart';
import 'package:final_exam/core/constants/color_const.dart';
import 'package:final_exam/core/constants/size_config.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    required TextEditingController searchController,
  }) : _searchController = searchController, super(key: key);

  final TextEditingController _searchController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: getH(41),
        width: getW(343),
        color: ColorConst.instance.bgContainer,
        child: TextFormField(
          controller: _searchController,
          decoration: inputDecor(),
        ),
      ),
    );
  }
}


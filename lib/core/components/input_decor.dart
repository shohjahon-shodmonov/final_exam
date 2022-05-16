import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

InputDecoration inputDecor() {
  return InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    hintText: "Izlash",
    suffixIcon: SvgPicture.asset(
      'assets/icons/search.svg',
      fit: BoxFit.none,
    ),
  );
}

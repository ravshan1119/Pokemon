import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonPokemon extends StatelessWidget {
  const ButtonPokemon({super.key, required this.color, required this.text});

  final Color color;

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38.h,
      width: 174.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.sp),
        color: color,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: Colors.white),
        ),
      ),
    );
  }
}

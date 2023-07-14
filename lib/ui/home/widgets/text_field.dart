import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/app_colors.dart';

class GlobalTextField extends StatelessWidget {
  GlobalTextField({
    Key? key,
    required this.hintText,
    required this.keyboardType,
    required this.textInputAction,
    required this.textAlign,
    required this.onChanged,
  }) : super(key: key);

  final String hintText;
  TextInputType keyboardType;
  TextInputAction textInputAction;
  TextAlign textAlign;
  final ValueChanged onChanged;

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();

    return TextField(
      onChanged: onChanged,
      style: TextStyle(
          fontSize: 16.spMin,
          fontWeight: FontWeight.w600,
          color: Colors.grey,
          fontFamily: "LeagueSpartan"),
      textAlign: textAlign,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.c_E5E5E5,
        hintText: hintText,
        hintStyle: TextStyle(
            fontSize: 16.spMin,
            fontWeight: FontWeight.w600,
            color: Colors.grey,
            fontFamily: "LeagueSpartan"),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(width: 1, color: AppColors.c_E5E5E5),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            width: 1,
            color: AppColors.c_E5E5E5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            width: 1,
            color: AppColors.c_E5E5E5,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            width: 1,
            color: AppColors.c_E5E5E5,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            width: 1,
            color: AppColors.c_E5E5E5,
          ),
        ),
      ),
    );
  }
}

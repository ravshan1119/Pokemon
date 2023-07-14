import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon/utils/app_images.dart';
class PokemonDitailContainer extends StatelessWidget {
  const PokemonDitailContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Positioned(
            top: 30.h,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("#006",style:  TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                    color: const Color(0xFFFC7CFF),
                  ),),
                  Text("Charizard",style:  TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                    color: const Color(0xFF000000),
                  ),),

                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 0,
                ),
                Container(
                  height: 205.h,
                  width: 370.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.sp),
                      gradient: const LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Color(0xffFA5BFD),
                            Color(0xffFC7BFF),
                          ])
                  ),
                )
              ],
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 25.h,
              child: Image.asset(
                AppImages.product,
                height: 247.h,
                width: 289.w,
              ))
        ],
      ),
    );
  }
}

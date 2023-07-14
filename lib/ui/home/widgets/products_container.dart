import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon/utils/app_images.dart';

class ProductContainer extends StatelessWidget {
  const ProductContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
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
                  height: 115.h,
                  width: 177.w,
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
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 75.h,
                        ),
                        Container(

                          height: 27.h,
                          width: 147.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.sp),
                            color: const Color(0xFF676767),
                            boxShadow: [
                              BoxShadow(
                                  color: const Color(0xFF676767).withOpacity(0.2),
                                  spreadRadius: 1.0,
                                  blurRadius: 10.0,
                                  offset: const Offset(3.0, 3.0))
                            ],

                          ),

                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15.w),
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "#001",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xffF993FB),
                                  ),
                                ),
                                Text(
                                  "Bulbasur",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            left: 0,
              right: 0,
              bottom: 59.h,
              child: Image.asset(
                AppImages.product,
                height: 100.h,
                width: 120.w,
              ))
        ],
      ),
    );
  }
}

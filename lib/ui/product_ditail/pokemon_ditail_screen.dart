import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon/ui/home/widgets/text_field.dart';
import 'package:pokemon/ui/product_ditail/widgets/botton_for_pokemon.dart';
import 'package:pokemon/ui/product_ditail/widgets/pokemon_ditail_container.dart';
import 'package:pokemon/utils/app_colors.dart';
import 'package:pokemon/utils/app_images.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class PokemonDitailScreen extends StatefulWidget {
  const PokemonDitailScreen({super.key});

  @override
  State<PokemonDitailScreen> createState() => _PokemonDitailScreenState();
}

class _PokemonDitailScreenState extends State<PokemonDitailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          systemOverlayStyle:
              const SystemUiOverlayStyle(statusBarColor: Colors.grey),
          toolbarHeight: 0,
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 24.h,
            ),
            Image.asset(
              AppImages.logo,
              height: 88.h,
              width: 252.w,
            ),
            SizedBox(
              height: 31.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: AppColors.c_E5E5E5,
                      )),
                  SizedBox(
                    width: 228.w,
                    child: GlobalTextField(
                        hintText: "Bulbasur",
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.search,
                        textAlign: TextAlign.center,
                        onChanged: (v) {}),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      Icons.menu_open,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
                height: 275.h,
                width: 370.w,
                child: const PokemonDitailContainer()),
            SizedBox(
              height: 22.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ZoomTapAnimation(
                      child: ButtonPokemon(
                          color: Color(0xF7FCA600), text: "Fugue")),
                  ZoomTapAnimation(
                      child: ButtonPokemon(
                          color: Color(0x750083FC), text: "Volador")),
                ],
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Expanded(
              child: Container(
                height: 280,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(
                        60,
                      ),
                      topLeft: Radius.circular(60)),
                  color: Color(0xFFFA5AFD),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: 41.h, left: 41.w, right: 41.w, bottom: 20.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Altura",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.sp,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 9.h,
                              ),
                              Text(
                                "1,7 m",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.sp,
                                  color: const Color(0x8FFFFFFF),
                                ),
                              ),
                              SizedBox(
                                height: 40.h,
                              ),
                              Text(
                                "Peso",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.sp,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 9.h,
                              ),
                              Text(
                                "90.5 kg",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.sp,
                                  color: const Color(0x8FFFFFFF),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "Altura",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.sp,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 9.h,
                              ),
                              Text(
                                "1,7 m",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.sp,
                                  color: const Color(0x8FFFFFFF),
                                ),
                              ),
                              SizedBox(
                                height: 40.h,
                              ),
                              Text(
                                "Peso",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.sp,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 9.h,
                              ),
                              Text(
                                "90.5 kg",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.sp,
                                  color: const Color(0x8FFFFFFF),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Altura",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.sp,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 9.h,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 15.h,
                                    width: 15.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: const Color(0xFF1D8FF8),
                                    ),
                                  ),
                                  Text(
                                    "Agua",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16.sp,
                                      color: const Color(0x8FFFFFFF),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 14.h,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 15.h,
                                    width: 15.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: const Color(0xFFFBD92A),
                                    ),
                                  ),
                                  Text(
                                    "Electricidad",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16.sp,
                                      color: const Color(0x8FFFFFFF),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 14.h,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 15.h,
                                    width: 15.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: const Color(0xFFCA9E03),
                                    ),
                                  ),
                                  Text(
                                    "Raco",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16.sp,
                                      color: const Color(0x8FFFFFFF),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 41.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Habilidades",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16.sp,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 9.h,
                                  ),
                                  Text(
                                    "Mar Llamas",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16.sp,
                                      color: const Color(0x8FFFFFFF),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 80.h,
                                width: 230.w,
                                child: Image.asset(
                                  AppImages.img,
                                  fit: BoxFit.cover,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

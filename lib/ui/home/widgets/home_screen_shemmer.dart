import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon/data/network/api_provider.dart';
import 'package:pokemon/data/network/universal_response.dart';
import 'package:pokemon/utils/app_colors.dart';
import 'package:pokemon/utils/app_images.dart';
import 'package:shimmer/shimmer.dart';

class HomeScreenShemmer extends StatefulWidget {
  const HomeScreenShemmer({super.key});

  @override
  State<HomeScreenShemmer> createState() => _HomeScreenShemmerState();
}

class _HomeScreenShemmerState extends State<HomeScreenShemmer> {
  UniversalResponse universalResponse = UniversalResponse();

  @override
  void initState() {
    universalResponse.data = ApiProvider.getPokemons();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Colors.grey),
        toolbarHeight: 0,
        backgroundColor: Colors.white,
      ),
      body: Shimmer.fromColors(
        baseColor: AppColors.c_FB70FE,
        highlightColor: Colors.grey,
        child: Column(
          children: [
            SizedBox(
              height: 53.h,
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
                padding: EdgeInsets.symmetric(horizontal: 55.w),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey,
                  ),
                )),
            SizedBox(
              height: 59.h,
            ),
            Expanded(
              child: GridView(
                physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 20,
                ),
                children: [
                  ...List.generate(
                      10,
                      (index) =>  Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey
                        ),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// FutureBuilder(
// future: ApiProvider.getPokemons(),
// builder: (BuildContext context, AsyncSnapshot snapshot) {
// if (snapshot.connectionState == ConnectionState.waiting) {
// print(snapshot.data);
// return const Center(
// child: CircularProgressIndicator(),
// );
// } else if (snapshot.hasData) {
// if (snapshot.data!.error.isEmpty) {
// PokemonModel model = snapshot.data!.data as PokemonModel;
// return ;
// }
// }
//
// return Center(
// child: Text(snapshot.error.toString()),
// );
// })

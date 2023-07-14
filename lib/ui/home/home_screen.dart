import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon/data/model/pokemon_model.dart';
import 'package:pokemon/data/network/api_provider.dart';
import 'package:pokemon/data/network/universal_response.dart';
import 'package:pokemon/ui/home/widgets/products_container.dart';
import 'package:pokemon/ui/home/widgets/text_field.dart';
import 'package:pokemon/ui/product_ditail/pokemon_ditail_screen.dart';
import 'package:pokemon/utils/app_images.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      body: Column(
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
            child: GlobalTextField(
                hintText: "Bulbasur",
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.search,
                textAlign: TextAlign.center,
                onChanged: (v) {}),
          ),
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
                    (index) => ZoomTapAnimation(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const PokemonDitailScreen()));
                        },
                        child: const ProductContainer()))
              ],
            ),
          ),
        ],
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

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pokemon/data/model/pokemon_model.dart';
import 'package:pokemon/data/network/universal_response.dart';

class ApiProvider {
  static Future<UniversalResponse> getPokemons() async {
    Uri uri = Uri.parse(
        "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json");

    try {
      http.Response response = await http.get(uri);
      if (response.statusCode == 200) {
        return UniversalResponse(
            data: PokemonModel.fromJson(jsonDecode(response.body)));
      }

      return UniversalResponse(error: "Error!");
    } catch (err) {
      return UniversalResponse(error: err.toString());
    }
  }
}

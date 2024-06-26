import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:yemek_tarifi/models/recipe.dart';

class RecipeApi {
  static Future<List<Recipe>> getRecipe() async {
    var uri = Uri.https('yummly2.p.rapidapi.com', '/feeds/list',
        {"limit": '24', "start": '0', "tag": "list.recipe.popular"});
    final response = await http.get(uri, headers: {
      'X-RapidAPI-Key': '0651be7114msh415c53bc8e82bebp1c7f72jsn448774ce63ed',
      'X-RapidAPI-Host': 'yummly2.p.rapidapi.com'
    });

    Map data = jsonDecode(response.body);
    List temp = [];

    for (var i in data['feed']) {
      temp.add(i['content']['details']);
    }

    return Recipe.recipesFromSnapshot(temp);
  }
}

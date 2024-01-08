import 'dart:convert';
import 'package:final_flutter_goods_manager_app/src/repository/repository.dart';
import 'package:http/http.dart' as http;
import '../model/flowers.dart';

class FlowerRepository implements Repository {
  String dataUrl = "https://6577dfae197926adf62ee9b3.mockapi.io/api/goods";

  @override
  Future<String> deleteFlower(Flower flower) {
    throw UnimplementedError();
  }

  @override
  Future<List<Flower>> getFlowerData() async {
    List<Flower> flowerList = [];
    var url = Uri.parse('$dataUrl/flower');
    var responsive = await http.get(url);
    var body = json.decode(responsive.body);
    // parse
    for (var i = 0; i < body.length; i++) {
      flowerList.add(Flower.fromJson(body[i]));
    }
    return flowerList;
  }

  @override
  Future<String> patchComplete(Flower flower) {
    throw UnimplementedError();
  }

  @override
  Future<String> postFlower(Flower flower) {
    throw UnimplementedError();
  }

  @override
  Future<String> putComplete(Flower flower) {
    throw UnimplementedError();
  }
}

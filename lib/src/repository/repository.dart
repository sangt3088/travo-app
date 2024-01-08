import '../model/flowers.dart';

abstract class Repository {
  // get
  Future<List<Flower>> getFlowerData();
  // patch
  Future<String> patchComplete(Flower flower);
  // put
  Future<String> putComplete(Flower flower);
  // delete
  Future<String> deleteFlower(Flower flower);
  // post
  Future<String> postFlower(Flower flower);
}

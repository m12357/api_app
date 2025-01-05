import 'package:store_app/helpers/api.dart';

class AllCategoriesService {
  Future<List<dynamic>> getALLCategories() async {
    List<dynamic> data =
        await Api().get(url: "https://fakestoreapi.com/products/categories");

    return data;
  }
}

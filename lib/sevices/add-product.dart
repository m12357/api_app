import 'package:store_app/helpers/api.dart';
import 'package:store_app/models/product-model.dart';

class AddProduct {
  Future<ProductModel> addProduct({
    required String title,
    required String desc,
    required String price,
    required String image,
    required String category,
  }) async {
    Map<String, dynamic> data =
        await Api().post(url: "https://fakestoreapi.com/products", body: {
      "title": title,
      "description": desc,
      "price": price,
      "image": image,
      "category": category,
    });
    return ProductModel.fromJson(data);
  }
}

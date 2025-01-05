import '../helpers/api.dart';
import '../models/product-model.dart';

class UpdateProductService {
  Future<ProductModel> updateProduct({
    required String title,g
    required String desc,
    required String price,
    required String image,
    required String category,
  }) async {
    Map<String, dynamic> data =
        await Api().put(url: "https://fakestoreapi.com/products", body: {
      "title": title,
      "description": desc,
      "price": price,
      "image": image,
      "category": category,
    }, token: '');
    return ProductModel.fromJson(data);
  }
}

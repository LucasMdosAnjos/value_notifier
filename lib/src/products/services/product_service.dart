import 'package:uno/uno.dart';

import '../models/product_model.dart';

class ProductService {
  final Uno uno;

  ProductService(this.uno);

  Future<List<ProductModel>> fetchProducts() async {
    final response = await uno.get('http://localhost:3031/products');
    final list = response.data as List<dynamic>;
    final products = list.map((e) {
      return ProductModel.fromMap(e);
    }).toList();
    return products;
  }
}

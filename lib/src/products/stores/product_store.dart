import 'package:flutter/cupertino.dart';
import 'package:value_notifier/src/products/services/product_service.dart';
import 'package:value_notifier/src/products/states/product_state.dart';

class ProductStore extends ValueNotifier<ProductState>{

  final ProductService service;

  ProductStore(this.service): super(InitialProductState());

  Future fetchProducts()async{
    value = LoadingProductState();
    await Future.delayed(const Duration(seconds: 1));
    try{
    final products = await service.fetchProducts();
    value = SuccessProductState(products);
    }catch(e){
      value = ErrorProductState(e.toString());
    }
  }
}
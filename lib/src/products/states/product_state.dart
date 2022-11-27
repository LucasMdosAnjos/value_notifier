import 'package:value_notifier/src/products/models/product_model.dart';

abstract class ProductState{

}

class InitialProductState extends ProductState{

}

class SuccessProductState extends ProductState{
  final List<ProductModel> products;

  SuccessProductState(this.products);
}

class LoadingProductState extends ProductState{

}

class ErrorProductState extends ProductState{
  final String message;

  ErrorProductState(this.message);
}
//Inicial, Success, Error, Loading
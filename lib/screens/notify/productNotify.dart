import 'dart:collection';

import 'package:citygrow/models/productModel.dart';
import 'package:flutter/cupertino.dart';

class ProductApiNotifier with ChangeNotifier {
  List<ProductApiCall> _productList = [];
  ProductApiCall _currentProduct;

  UnmodifiableListView<ProductApiCall> get productList => UnmodifiableListView(_productList);

  ProductApiCall get currentProduct => _currentProduct;

  set productList(List<ProductApiCall> productList) {
    _productList = productList;
    notifyListeners();
  }

  set currentProduct(ProductApiCall productApiCall) {
    _currentProduct = productApiCall;
    notifyListeners();
  }
}
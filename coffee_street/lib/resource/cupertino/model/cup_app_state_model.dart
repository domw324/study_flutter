import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' as foundation;

import 'cup_product.dart';
import 'cup_product_repository.dart';

double _salesTaxRate = 0.06;
double _shippingCostPerItem = 7;

class AppStateModel extends foundation.ChangeNotifier {
  List<Product> _availableProducts;
  Category _selectedCategory = Category.all;
  final _productsInCart = <int, int>{};

  Map<int, int> get productsInCart {}
  int get totalCartQuantity {}
  Category get selectedCategory {}
  double get subtotalCost {}
  double get shippingCost {}

  double get tax {}
  double get totalCost {}
  List<Product> getProducts() {}
  List<Product> search(String searchTerms) {}
  void addProductToCart(int productId) {}
  void removeItemFromCart(int productId) {}
  Product getProductById(int id) {}
  void clearCart() {}
  void loadProducts() {}
  void setCategory(Category newCategory) {}

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(),
    );
  }
}
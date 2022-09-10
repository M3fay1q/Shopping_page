import 'package:get/get.dart';
import 'package:state_management/models/product.dart';

class ShoppingController extends GetxController {
  var products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchproducts();
  }

  void fetchproducts() async {
    await Future.delayed(const Duration(seconds: 1));
    var productResult = [
      Product(
          id: 1,
          productName: 'product1',
          productImage: 'prod1',
          productDescription: 'proddescription',
          price: 30),
      Product(
          id: 2,
          productName: 'product2',
          productImage: 'prod2',
          productDescription: 'proddescription',
          price: 40),
      Product(
          id: 3,
          productName: 'product3',
          productImage: 'prod3',
          productDescription: 'proddescription',
          price: 20)
    ];
    products.value = productResult;
  }
}

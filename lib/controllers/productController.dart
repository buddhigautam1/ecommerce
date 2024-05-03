import 'package:ecommerce/models/product_model.dart';
import 'package:ecommerce/services/api_services.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = <Products>[].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }
  
  void fetchProducts() async {
    try {
      isLoading.value = true;
      var products = await ApiServices.fetchProducts();
      // ignore: unnecessary_null_comparison
      if(products != null) {
        productList.value = products as List<Products>;
      }
    } finally {
      isLoading.value = false;
    }
  }
}

import 'package:fake_store_json_testing/data/vos/product_vo.dart';

abstract class GetAllProductDataAgent {
  Future<List<ProductVO>> getAllProductList();
}

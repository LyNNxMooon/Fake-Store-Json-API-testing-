import 'package:fake_store_json_testing/data/vos/product_vo.dart';

class GetAllProductResponse {
  final List<ProductVO> allProductList;

  GetAllProductResponse({required this.allProductList});

  factory GetAllProductResponse.formJson(List<ProductVO> allProductList) =>
      GetAllProductResponse(allProductList: allProductList);
}

import 'package:dio/dio.dart';
import 'package:fake_store_json_testing/data/vos/product_vo.dart';
import 'package:fake_store_json_testing/network/api_constant/api_constant.dart';
import 'package:retrofit/http.dart';
part 'get_all_product_api.g.dart';

@RestApi(baseUrl: kBaseURL)
abstract class GetAllProductAPI {
  factory GetAllProductAPI(Dio dio) => _GetAllProductAPI(dio);

  @GET(kEndPointForProduct)
  Future<List<ProductVO>> getAllProduct();
}

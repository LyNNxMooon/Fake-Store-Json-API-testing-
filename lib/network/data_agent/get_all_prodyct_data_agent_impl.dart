import 'package:dio/dio.dart';
import 'package:fake_store_json_testing/data/vos/product_vo.dart';
import 'package:fake_store_json_testing/network/api/get_all_product_api.dart';
import 'package:fake_store_json_testing/network/data_agent/get_all_product_data_agent.dart';

class GetAllProductDataAgentImpl extends GetAllProductDataAgent {
  late GetAllProductAPI _getAllProductAPI;
  GetAllProductDataAgentImpl._() {
    _getAllProductAPI = GetAllProductAPI(Dio());
  }

  static final GetAllProductDataAgentImpl _singleton =
      GetAllProductDataAgentImpl._();

  factory GetAllProductDataAgentImpl() => _singleton;

  @override
  Future<List<ProductVO>> getAllProductList() =>
      _getAllProductAPI.getAllProduct().asStream().map((event) => event).first;
}

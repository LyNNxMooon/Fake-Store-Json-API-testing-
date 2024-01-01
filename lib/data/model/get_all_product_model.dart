import 'package:fake_store_json_testing/data/vos/product_vo.dart';
import 'package:fake_store_json_testing/network/data_agent/get_all_product_data_agent.dart';
import 'package:fake_store_json_testing/network/data_agent/get_all_prodyct_data_agent_impl.dart';

class GetAllProductModel {
  GetAllProductModel._();
  static final GetAllProductModel _singleton = GetAllProductModel._();
  factory GetAllProductModel() => _singleton;

  final GetAllProductDataAgent _getAllProductDataAgent =
      GetAllProductDataAgentImpl();

  Future<List<ProductVO>> getAllProductList() =>
      _getAllProductDataAgent.getAllProductList();
}

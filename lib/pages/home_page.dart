import 'package:fake_store_json_testing/constant/dimensions.dart';
import 'package:fake_store_json_testing/constant/strings.dart';
import 'package:fake_store_json_testing/data/model/get_all_product_model.dart';
import 'package:fake_store_json_testing/data/vos/product_vo.dart';
import 'package:flutter/material.dart';

final GetAllProductModel getAllProductModel = GetAllProductModel();

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text(kProductTitleText),
        centerTitle: true,
      ),
      body: FutureBuilder<List<ProductVO>>(
        future: getAllProductModel.getAllProductList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasError) {
            return Center(
              child: Text("Error: ${snapshot.error}"),
            );
          }
          final result = snapshot.data;

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: kSP15x),
            child: ListView.separated(
                itemBuilder: (context, index) =>
                    AllProductsItemView(products: result?[index]),
                separatorBuilder: (context, index) => const SizedBox(
                      height: kSP20x,
                      child: Divider(
                        thickness: 3,
                      ),
                    ),
                itemCount: result?.length ?? 0),
          );
        },
      ),
    ));
  }
}

class AllProductsItemView extends StatelessWidget {
  final ProductVO? products;
  const AllProductsItemView({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.85,
      height: MediaQuery.of(context).size.height * 0.1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(products?.title ?? ''),
          Text(products?.price.toString() ?? ''),
        ],
      ),
    );
  }
}

import 'package:fake_store_json_testing/data/vos/rating_vo.dart';
import 'package:json_annotation/json_annotation.dart';
part 'product_vo.g.dart';

@JsonSerializable()
class ProductVO {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  final RatingVO rating;

  ProductVO(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.image,
      required this.rating});

  factory ProductVO.fromJson(Map<String, dynamic> json) =>
      _$ProductVOFromJson(json);

  Map<String, dynamic> toJson() => _$ProductVOToJson(this);
}

import 'package:json_annotation/json_annotation.dart';
part 'rating_vo.g.dart';

@JsonSerializable()
class RatingVO {
  final double rate;
  final int count;

  RatingVO({required this.rate, required this.count});

  factory RatingVO.fromJson(Map<String, dynamic> json) =>
      _$RatingVOFromJson(json);

  Map<String, dynamic> toJson() => _$RatingVOToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductVO _$ProductVOFromJson(Map<String, dynamic> json) => ProductVO(
      id: json['id'] as int,
      title: json['title'] as String,
      price: (json['price'] as num).toDouble(),
      description: json['description'] as String,
      category: json['category'] as String,
      image: json['image'] as String,
      rating: RatingVO.fromJson(json['rating'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductVOToJson(ProductVO instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'description': instance.description,
      'category': instance.category,
      'image': instance.image,
      'rating': instance.rating,
    };

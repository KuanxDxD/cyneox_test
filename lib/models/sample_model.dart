import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
part 'sample_model.g.dart';

@JsonSerializable()
class SampleModel with HiveObjectMixin {
  SampleModel({
    this.id,
    this.title,
    this.subtitle,
    this.description,
    this.appIconImage,
    this.rating,
    this.size,
    this.suitableAge,
    this.category,
    this.developer,
    this.images,
  });

  factory SampleModel.fromJson(Map<String, dynamic> json) =>
      _$SampleModelFromJson(json);

  Map<String, dynamic> toJson() => _$SampleModelToJson(this);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'subtitle')
  final String? subtitle;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'app_icon_image')
  final String? appIconImage;
  @JsonKey(name: 'rating')
  final num? rating;
  @JsonKey(name: 'size')
  final num? size;
  @JsonKey(name: 'suitable_age')
  final num? suitableAge;
  @JsonKey(name: 'category')
  final String? category;
  @JsonKey(name: 'developer')
  final String? developer;
  @JsonKey(name: 'images')
  final List<String>? images;
}

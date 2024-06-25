import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
part 'input_value.g.dart';

@JsonSerializable()
@immutable
class InputValue {
  const InputValue({
    required this.id,
    required this.name,
    required this.value,
  });

  factory InputValue.fromJson(Map<String, dynamic> json) =>
      _$InputValueFromJson(json);

  Map<String, dynamic> toJson() => _$InputValueToJson(this);

  final num id;
  final String name;
  final dynamic value;

  @override
  bool operator ==(Object other) => other is InputValue && other.name == name;

  @override
  int get hashCode => name.hashCode;
}

import 'package:json_annotation/json_annotation.dart';

part 'sub_symptoms.g.dart';

@JsonSerializable()
class SubSymptoms {
  /// The generated code assumes these values exist in JSON.
  final int id;
  final String icon;
  final String title;


  SubSymptoms(this.id, this.icon, this.title,);

  /// Connect the generated [_$SubSymptomsFromJson] function to the `fromJson`
  /// factory.
  factory SubSymptoms.fromJson(Map<String, dynamic> json) => _$SubSymptomsFromJson(json);

  /// Connect the generated [_$SubSymptomsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$SubSymptomsToJson(this);
}
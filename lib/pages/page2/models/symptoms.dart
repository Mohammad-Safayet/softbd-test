import 'package:json_annotation/json_annotation.dart';
import 'package:safayet_technical_test/pages/page2/models/sub_symptoms.dart';
part 'symptoms.g.dart';

@JsonSerializable()
class Symptoms {
  /// The generated code assumes these values exist in JSON.
  final int id;
  final String title;
  final List<SubSymptoms> sub_symptom;


  Symptoms(this.id, this.title, this.sub_symptom);

  /// Connect the generated [_$SymptomsFromJson] function to the `fromJson`
  /// factory.
  factory Symptoms.fromJson(Map<String, dynamic> json) => _$SymptomsFromJson(json);

  /// Connect the generated [_$SymptomsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$SymptomsToJson(this);
}
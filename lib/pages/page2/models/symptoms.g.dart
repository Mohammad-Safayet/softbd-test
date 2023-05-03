// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'symptoms.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Symptoms _$SymptomsFromJson(Map<String, dynamic> json) => Symptoms(
      json['id'] as int,
      json['title'] as String,
      (json['sub_symptom'] as List<dynamic>)
          .map((e) => SubSymptoms.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SymptomsToJson(Symptoms instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'sub_symptom': instance.sub_symptom,
    };

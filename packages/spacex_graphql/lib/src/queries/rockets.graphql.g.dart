// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rockets.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryFetchRockets _$QueryFetchRocketsFromJson(Map<String, dynamic> json) =>
    QueryFetchRockets(
      rockets: (json['rockets'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : QueryFetchRockets$rockets.fromJson(e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$QueryFetchRocketsToJson(QueryFetchRockets instance) =>
    <String, dynamic>{
      'rockets': instance.rockets?.map((e) => e?.toJson()).toList(),
      '__typename': instance.$__typename,
    };

QueryFetchRockets$rockets _$QueryFetchRockets$rocketsFromJson(
        Map<String, dynamic> json) =>
    QueryFetchRockets$rockets(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$QueryFetchRockets$rocketsToJson(
        QueryFetchRockets$rockets instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      '__typename': instance.$__typename,
    };

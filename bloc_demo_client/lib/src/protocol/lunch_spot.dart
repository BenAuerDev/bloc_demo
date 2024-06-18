/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'protocol.dart' as _i2;

abstract class LunchSpot implements _i1.SerializableModel {
  LunchSpot._({
    this.id,
    required this.name,
    required this.category,
    required this.votes,
  });

  factory LunchSpot({
    int? id,
    required String name,
    required _i2.LunchSpotCategory category,
    required int votes,
  }) = _LunchSpotImpl;

  factory LunchSpot.fromJson(Map<String, dynamic> jsonSerialization) {
    return LunchSpot(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      category: _i2.LunchSpotCategory.fromJson(
          (jsonSerialization['category'] as String)),
      votes: jsonSerialization['votes'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  _i2.LunchSpotCategory category;

  int votes;

  LunchSpot copyWith({
    int? id,
    String? name,
    _i2.LunchSpotCategory? category,
    int? votes,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'category': category.toJson(),
      'votes': votes,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _LunchSpotImpl extends LunchSpot {
  _LunchSpotImpl({
    int? id,
    required String name,
    required _i2.LunchSpotCategory category,
    required int votes,
  }) : super._(
          id: id,
          name: name,
          category: category,
          votes: votes,
        );

  @override
  LunchSpot copyWith({
    Object? id = _Undefined,
    String? name,
    _i2.LunchSpotCategory? category,
    int? votes,
  }) {
    return LunchSpot(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      category: category ?? this.category,
      votes: votes ?? this.votes,
    );
  }
}

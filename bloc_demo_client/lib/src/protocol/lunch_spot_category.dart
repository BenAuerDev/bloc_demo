/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

enum LunchSpotCategory implements _i1.SerializableModel {
  burgers,
  pizza,
  sushi,
  tacos,
  thai,
  vegan,
  vegetarian;

  static LunchSpotCategory fromJson(String name) {
    switch (name) {
      case 'burgers':
        return burgers;
      case 'pizza':
        return pizza;
      case 'sushi':
        return sushi;
      case 'tacos':
        return tacos;
      case 'thai':
        return thai;
      case 'vegan':
        return vegan;
      case 'vegetarian':
        return vegetarian;
      default:
        throw ArgumentError(
            'Value "$name" cannot be converted to "LunchSpotCategory"');
    }
  }

  @override
  String toJson() => name;
  @override
  String toString() => name;
}

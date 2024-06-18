import 'package:meta/meta.dart';

import 'package:bloc_demo_client/bloc_demo_client.dart';

@immutable
abstract class LunchSpotState {}

class LunchSpotInitial extends LunchSpotState {}

class LunchSpotLoaded extends LunchSpotState {
  final List<LunchSpot> spots;

  LunchSpotLoaded({required this.spots});
}

class LunchSpotError extends LunchSpotState {
  final String message;

  LunchSpotError({required this.message});
}

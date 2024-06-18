import 'package:bloc_demo_client/bloc_demo_client.dart';
import 'package:bloc_demo_flutter/src/features/lunch_spots/domain/lunch_spot_state.dart';
import 'package:bloc_demo_flutter/main.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LunchSpotCubit extends Cubit<LunchSpotState> {
  LunchSpotCubit() : super(LunchSpotInitial()) {
    getLunchSpots();
  }

  List<LunchSpot> _spots = [];

  Future<void> proposeLunchSpot(LunchSpot spot) async {
    final newSpot = await client.lunchSpot.proposeLunchSpot(spot);
    _spots.add(newSpot);
    emit(
      LunchSpotLoaded(
        spots: List.from(_spots),
      ),
    );
  }

  Future<void> getLunchSpots() async {
    final spots = await client.lunchSpot.getLunchSpots();
    _spots = spots;
    emit(
      LunchSpotLoaded(
        spots: List.from(_spots),
      ),
    );
  }

  Future<void> voteForLunchSpot(int spotId) async {
    await client.lunchSpot.voteForLunchSpot(spotId);
    final updatedSpots = _spots.map((spot) {
      if (spot.id == spotId) {
        return spot.copyWith(votes: spot.votes + 1);
      } else {
        return spot;
      }
    }).toList();
    _spots = updatedSpots;
    emit(
      LunchSpotLoaded(
        spots: List.from(_spots),
      ),
    );
  }
}

import 'package:bloc_demo_server/src/generated/lunch_spot.dart';
import 'package:serverpod/serverpod.dart';

/// In this folder you define your endpoints.
/// An endpoint is a class that extends `Endpoint`.
/// The methods defined here are accessible in the client through the `Client` object.
/// like so:
/// ```dart
/// var response = await client.endpointName.methodName(param1, param2);
/// ```
/// The ending Endpoint is removed.
/// So LunchSpotEndpoint will be called as `client.lunchSpot.methodName()`

/// After modifying this file, run `serverpod generate` in the root directory of the server to update the generated code.
///
class LunchSpotEndpoint extends Endpoint {
  Future<LunchSpot> proposeLunchSpot(Session session, LunchSpot spot) async {
    return await LunchSpot.db.insertRow(session, spot);
  }

  Future<List<LunchSpot>> getLunchSpots(Session session) async {
    return await LunchSpot.db.find(session);
  }

  Future<void> voteForLunchSpot(Session session, int spotId) async {
    final spot = await LunchSpot.db.findById(session, spotId);

    LunchSpot.db.updateRow(session, spot!.copyWith(votes: spot.votes + 1));
  }
}

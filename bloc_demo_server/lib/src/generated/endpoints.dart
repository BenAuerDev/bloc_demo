/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/lunch_spot_endpoint.dart' as _i2;
import 'package:bloc_demo_server/src/generated/lunch_spot.dart' as _i3;
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i4;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'lunchSpot': _i2.LunchSpotEndpoint()
        ..initialize(
          server,
          'lunchSpot',
          null,
        )
    };
    connectors['lunchSpot'] = _i1.EndpointConnector(
      name: 'lunchSpot',
      endpoint: endpoints['lunchSpot']!,
      methodConnectors: {
        'proposeLunchSpot': _i1.MethodConnector(
          name: 'proposeLunchSpot',
          params: {
            'spot': _i1.ParameterDescription(
              name: 'spot',
              type: _i1.getType<_i3.LunchSpot>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['lunchSpot'] as _i2.LunchSpotEndpoint)
                  .proposeLunchSpot(
            session,
            params['spot'],
          ),
        ),
        'getLunchSpots': _i1.MethodConnector(
          name: 'getLunchSpots',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['lunchSpot'] as _i2.LunchSpotEndpoint)
                  .getLunchSpots(session),
        ),
        'voteForLunchSpot': _i1.MethodConnector(
          name: 'voteForLunchSpot',
          params: {
            'spotId': _i1.ParameterDescription(
              name: 'spotId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['lunchSpot'] as _i2.LunchSpotEndpoint)
                  .voteForLunchSpot(
            session,
            params['spotId'],
          ),
        ),
      },
    );
    modules['serverpod_auth'] = _i4.Endpoints()..initializeEndpoints(server);
  }
}

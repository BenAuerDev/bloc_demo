/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:bloc_demo_client/src/protocol/lunch_spot.dart' as _i3;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i4;
import 'protocol.dart' as _i5;

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
/// {@category Endpoint}
class EndpointLunchSpot extends _i1.EndpointRef {
  EndpointLunchSpot(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'lunchSpot';

  _i2.Future<_i3.LunchSpot> proposeLunchSpot(_i3.LunchSpot spot) =>
      caller.callServerEndpoint<_i3.LunchSpot>(
        'lunchSpot',
        'proposeLunchSpot',
        {'spot': spot},
      );

  _i2.Future<List<_i3.LunchSpot>> getLunchSpots() =>
      caller.callServerEndpoint<List<_i3.LunchSpot>>(
        'lunchSpot',
        'getLunchSpots',
        {},
      );

  _i2.Future<void> voteForLunchSpot(int spotId) =>
      caller.callServerEndpoint<void>(
        'lunchSpot',
        'voteForLunchSpot',
        {'spotId': spotId},
      );
}

class _Modules {
  _Modules(Client client) {
    auth = _i4.Caller(client);
  }

  late final _i4.Caller auth;
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
    Function(
      _i1.MethodCallContext,
      Object,
      StackTrace,
    )? onFailedCall,
    Function(_i1.MethodCallContext)? onSucceededCall,
  }) : super(
          host,
          _i5.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
          onFailedCall: onFailedCall,
          onSucceededCall: onSucceededCall,
        ) {
    lunchSpot = EndpointLunchSpot(this);
    modules = _Modules(this);
  }

  late final EndpointLunchSpot lunchSpot;

  late final _Modules modules;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup =>
      {'lunchSpot': lunchSpot};

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup =>
      {'auth': modules.auth};
}

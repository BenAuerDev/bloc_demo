import 'dart:io';

import 'package:bloc_demo_client/bloc_demo_client.dart';
import 'package:bloc_demo_flutter/screens/auth_screen.dart';
import 'package:bloc_demo_flutter/is_authenticated.dart';
import 'package:bloc_demo_flutter/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

late Client client;
late SessionManager sessionManager;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  client = Client(
    "http://${Platform.isAndroid ? "10.0.3.2" : "localhost"}:8080/",
    authenticationKeyManager: FlutterAuthenticationKeyManager(),
  )..connectivityMonitor = FlutterConnectivityMonitor();

  sessionManager = SessionManager(
    caller: client.modules.auth,
  );

  await sessionManager.initialize();

  runApp(const MyApp());
}

/// A simple StatelessWidget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Serverpod Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<IsAuthenticatedCubit>(
        create: (_) => IsAuthenticatedCubit(),
        child: BlocBuilder<IsAuthenticatedCubit, bool>(
          builder: (context, state) {
            return state ? const HomeScreen() : const AuthScreen();
          },
        ),
      ),
    );
  }
}

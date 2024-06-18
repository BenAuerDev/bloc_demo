import 'package:flutter/material.dart';
import 'package:serverpod_auth_email_flutter/serverpod_auth_email_flutter.dart';

import 'package:bloc_demo_flutter/main.dart';

/// A simple screen that shows a sign in button.
/// The SignInWithEmailButton is a widget provided by the serverpod_auth_email_flutter package.
/// Clicking it opens a Dialog handling:
/// - Sign up
/// - Sign in
/// - Reset password
/// - Calls [sendValidationEmail] (located in `bloc_demo/bloc_demo_server/lib/server.dart`) when user signs up or resets password
/// The Logout has to be handled via the SessionManager like so:
/// ```dart
/// sessionManager.signOut();
/// ```
class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SignInWithEmailButton(
          caller: client.modules.auth,
        ),
      ),
    );
  }
}

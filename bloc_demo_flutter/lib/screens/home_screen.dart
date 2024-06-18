import 'package:flutter/material.dart';

import 'package:bloc_demo_flutter/main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => sessionManager.signOut(),
          child: const Text('Sign out'),
        ),
      ),
    );
  }
}

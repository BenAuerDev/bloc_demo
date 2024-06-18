import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloc_demo_flutter/src/features/lunch_spots/application/lunch_spot_cubit.dart';
import 'package:bloc_demo_flutter/src/features/lunch_spots/presentation/lunch_spot_collection.dart';
import 'package:bloc_demo_flutter/main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Lunch Spot Voting'),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: const Text('Sign out'),
                onTap: () => sessionManager.signOut(),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 16.0,
          ),
          child: BlocProvider(
            create: (context) => LunchSpotCubit(),
            child: const LunchSpotScreen(),
          ),
        ));
  }
}

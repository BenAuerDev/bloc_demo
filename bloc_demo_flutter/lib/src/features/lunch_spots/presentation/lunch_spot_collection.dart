// main.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloc_demo_flutter/src/features/lunch_spots/presentation/lunch_spot_form.dart';

import '../application/lunch_spot_cubit.dart';
import '../domain/lunch_spot_state.dart';

class LunchSpotScreen extends StatelessWidget {
  const LunchSpotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const LunchSpotForm(),
        Expanded(
          child: BlocBuilder<LunchSpotCubit, LunchSpotState>(
            builder: (context, state) {
              if (state is LunchSpotInitial) {
                return const Center(child: Text('No spots proposed yet.'));
              } else if (state is LunchSpotLoaded) {
                return ListView.builder(
                  itemCount: state.spots.length,
                  itemBuilder: (context, index) {
                    final spot = state.spots[index];
                    return ListTile(
                      subtitle: Text('Votes: ${spot.votes}'),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(spot.name),
                          Text('Category: ${spot.category}'),
                        ],
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.thumb_up),
                        onPressed: () {
                          context
                              .read<LunchSpotCubit>()
                              .voteForLunchSpot(spot.id!);
                        },
                      ),
                    );
                  },
                );
              } else if (state is LunchSpotError) {
                return Center(child: Text('Error: ${state.message}'));
              }
              return Container();
            },
          ),
        ),
      ],
    );
  }
}

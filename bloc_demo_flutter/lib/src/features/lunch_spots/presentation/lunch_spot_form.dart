import 'package:bloc_demo_client/bloc_demo_client.dart';
import 'package:bloc_demo_flutter/src/features/lunch_spots/application/lunch_spot_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LunchSpotForm extends StatelessWidget {
  const LunchSpotForm({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final ValueNotifier<LunchSpotCategory?> selectedCategoryNotifier =
        ValueNotifier<LunchSpotCategory?>(null);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: 'Lunch Spot Name',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(width: 8.0),
            Flexible(
              child: DropdownButtonFormField<LunchSpotCategory>(
                value: selectedCategoryNotifier.value,
                onChanged: (value) {
                  selectedCategoryNotifier.value = value;
                },
                items: LunchSpotCategory.values.map((category) {
                  return DropdownMenuItem<LunchSpotCategory>(
                    value: category,
                    child: Text(category.toString()),
                  );
                }).toList(),
                decoration: const InputDecoration(
                  labelText: 'Category',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8.0),
        ElevatedButton(
          onPressed: () {
            context.read<LunchSpotCubit>().proposeLunchSpot(
                  LunchSpot(
                    name: nameController.text,
                    votes: 0,
                    category: selectedCategoryNotifier.value!,
                  ),
                );
            nameController.clear();
          },
          child: const Text('Propose'),
        ),
      ],
    );
  }
}

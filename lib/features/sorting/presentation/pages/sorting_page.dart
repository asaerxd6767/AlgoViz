import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/sorting_cubit.dart';
import '../../../../core/constants/app_constants.dart';

class SortingPage extends StatelessWidget {
  const SortingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(title: const Text(AppBrand.name)),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.graphic_eq,
              size: AppSpacing.xl,
              color: colorScheme.primaryContainer,
            ),
            const SizedBox(height: AppSpacing.md),
            Text(AppBrand.tagline, style: textTheme.titleMedium),
            const SizedBox(height: AppSpacing.sm),
            BlocBuilder<SortingCubit, SortingState>(
              builder: (context, state) {
                return Column(
                  mainAxisSize: .min,
                  children: [
                    Text(state.status.name.toUpperCase()),
                    Row(
                      mainAxisAlignment: .center,
                      children: [
                        OutlinedButton(
                          onPressed: () => context.read<SortingCubit>().start(),
                          child: Text('start'),
                        ),
                        OutlinedButton(
                          onPressed: () => context.read<SortingCubit>().reset(),
                          child: Text('reset'),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

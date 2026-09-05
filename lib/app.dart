import 'package:algoviz/features/sorting/presentation/bloc/sorting_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/theme/app_theme.dart';
import 'features/sorting/presentation/pages/sorting_page.dart';

class AlgoVizApp extends StatelessWidget {
  const AlgoVizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AlgoViz',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.dark,
      home: BlocProvider(create: (_) => SortingCubit(), child: const SortingPage(),),
    );
  }
}
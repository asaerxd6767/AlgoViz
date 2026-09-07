import 'package:algoviz/features/sorting/domain/models/sort_bar_model.dart';
import 'package:flutter/material.dart';

import 'sorting_painter.dart';

class SortBarsView extends StatelessWidget {
  const SortBarsView({super.key, required this.bars});

  final List<SortBarModel> bars;

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: CustomPaint(
        painter: SortingPainter(bars: bars),
        child: const SizedBox.expand(),
      ),
    );
  }
}
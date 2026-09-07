import 'dart:math';

import 'package:algoviz/core/theme/app_colors.dart';
import 'package:algoviz/features/sorting/domain/models/sort_bar_model.dart';
import 'package:flutter/material.dart';

class SortingPainter extends CustomPainter {
  SortingPainter({required this.bars});

  final List<SortBarModel> bars;

  static const double gap = 2.0;

  @override
  void paint(Canvas canvas, Size size) {
    if (bars.isEmpty) return;

    final maxValue = bars.map((b) => b.value).reduce(max).toDouble();
    final barWidth = (size.width - (bars.length - 1) * gap) / bars.length;
    final paint = Paint()..isAntiAlias = false;

    for (var i = 0; i < bars.length; i++) {
      final bar = bars[i];
      final barHeight = bar.value / maxValue * size.height;
      final x = i * (barWidth + gap);
      final y = size.height - barHeight;

      paint.color = _colorFor(bar.state);
      canvas.drawRect(Rect.fromLTWH(x, y, barWidth, barHeight), paint);
    }
  }

  Color _colorFor(BarState state) {
    return switch (state) {
      BarState.normal => AppColors.primaryContainer,
      BarState.comparing => AppColors.accentCompare,
      BarState.swapping => AppColors.accentSwap,
      BarState.sorted => AppColors.accentSorted,
    };
  }

  @override
  bool shouldRepaint(covariant SortingPainter oldDelegate) =>
      oldDelegate.bars != bars;
}
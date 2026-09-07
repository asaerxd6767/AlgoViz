import 'dart:math';

enum BarState { normal, comparing, swapping, sorted }

class SortBarModel {
  final int value;
  final BarState state;

  const SortBarModel({required this.value, this.state = BarState.normal});

  SortBarModel copyWith({int? value, BarState? state}) =>
      SortBarModel(value: value ?? this.value, state: state ?? this.state);

  static List<SortBarModel> randomArray({int length = 48, int maxValue = 100}) {
    final rng = Random();
    return List.generate(
      length,
      (index) => SortBarModel(value: rng.nextInt(maxValue + 1)),
    );
  }
}

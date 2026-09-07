import 'package:algoviz/features/sorting/domain/models/sort_bar_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum SortingStatus { idle, running, paused, done }

class SortingState {
  final List<SortBarModel> bars;
  final SortingStatus status;
  const SortingState({this.status = .idle, required this.bars});

  SortingState copyWith({SortingStatus? status, List<SortBarModel>? bars}) =>
      SortingState(status: status ?? this.status, bars: bars ?? this.bars);
}

class SortingCubit extends Cubit<SortingState> {
  SortingCubit() : super(SortingState(bars: SortBarModel.randomArray()));

  void start() => emit(state.copyWith(status: .running));
  void reset() => emit(SortingState(bars: SortBarModel.randomArray()));
}

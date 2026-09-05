import 'package:flutter_bloc/flutter_bloc.dart';

enum SortingStatus { idle, running, paused, done }

class SortingState {
  final SortingStatus status;
  const SortingState({this.status = .idle});

  SortingState copyWith({SortingStatus? status}) =>
      SortingState(status: status ?? this.status);
}

class SortingCubit extends Cubit<SortingState> {
  SortingCubit() : super(const SortingState());

  void start() => emit(state.copyWith(status: .running));
  void reset() => emit(const SortingState());
}

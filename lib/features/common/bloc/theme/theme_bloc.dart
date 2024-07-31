import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const ThemeState.defaultState()) {
    on<OnChangeDarkModeEvent>(_onChangeDarkModeEvent);
    on<OnChangeLightModeEvent>(_onChangeLightModeEvent);
  }

  Future<void> _onChangeDarkModeEvent(
    OnChangeDarkModeEvent event,
    Emitter<ThemeState> emit,
  ) async {
    if (state.isLightMode) {
      emit(state.copyWith(isLightMode: false));
    }
  }

  Future<void> _onChangeLightModeEvent(
    OnChangeLightModeEvent event,
    Emitter<ThemeState> emit,
  ) async {
    if (!state.isLightMode) {
      emit(state.copyWith(isLightMode: true));
    }
  }
}

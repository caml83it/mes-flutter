import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'language_event.dart';
part 'language_state.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc() : super(const LanguageState.defaultState()) {
    on<JALanguageEvent>(_onChangeJaLanguageEvent);
    on<VNLanguageEvent>(_onChangeVnLanguageEvent);
    on<ENLanguageEvent>(_onChangeEnLanguageEvent);
  }

  Future<void> _onChangeJaLanguageEvent(
    JALanguageEvent event,
    Emitter<LanguageState> emit,
  ) async {
    emit(state.copyWith(languageCode: event.languageCode));
  }

  Future<void> _onChangeVnLanguageEvent(
    VNLanguageEvent event,
    Emitter<LanguageState> emit,
  ) async {
    emit(state.copyWith(languageCode: event.languageCode));
  }

  Future<void> _onChangeEnLanguageEvent(
    ENLanguageEvent event,
    Emitter<LanguageState> emit,
  ) async {
    emit(state.copyWith(languageCode: event.languageCode));
  }
}

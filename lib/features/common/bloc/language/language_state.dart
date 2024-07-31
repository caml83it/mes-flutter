part of 'language_bloc.dart';

class LanguageState extends Equatable {
  final String languageCode;

  const LanguageState._({this.languageCode = 'en'});

  const LanguageState.defaultState() : this._();

  @override
  List<Object?> get props => [languageCode];

  LanguageState copyWith({required String languageCode}) {
    return LanguageState._(languageCode: languageCode);
  }
}

part of 'language_bloc.dart';

sealed class LanguageEvent {}

final class VNLanguageEvent extends LanguageEvent {
  late final String languageCode;
  VNLanguageEvent() {
    languageCode = 'vi';
  }
}

final class ENLanguageEvent extends LanguageEvent {
  late final String languageCode;
  ENLanguageEvent() {
    languageCode = 'en';
  }
}

final class JALanguageEvent extends LanguageEvent {
  late final String languageCode;
  JALanguageEvent() {
    languageCode = 'ja';
  }
}

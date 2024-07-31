part of 'theme_bloc.dart';

class ThemeState extends Equatable {
  final bool isLightMode;

  const ThemeState._({this.isLightMode = true});

  const ThemeState.defaultState() : this._();

  @override
  List<Object?> get props => [isLightMode];

  ThemeState copyWith({required bool isLightMode}) {
    return ThemeState._(isLightMode: isLightMode);
  }
}

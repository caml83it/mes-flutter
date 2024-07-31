part of 'theme_bloc.dart';

sealed class ThemeEvent {}

final class OnChangeLightModeEvent extends ThemeEvent {}

final class OnChangeDarkModeEvent extends ThemeEvent {}

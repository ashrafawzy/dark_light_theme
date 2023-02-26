part of 'theme_bloc.dart';

abstract class ThemeState  {
  const ThemeState();



}

class ThemeInitial extends ThemeState {}

class LoadedThemeState extends ThemeState {
  final ThemeData themeData;
 const LoadedThemeState({
    required this.themeData,
  });


}

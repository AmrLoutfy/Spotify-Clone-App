import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeCubit extends HydratedCubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.system); // You can keep system as default

  void updateTheme(ThemeMode themeMode) => emit(themeMode);

  @override
  ThemeMode? fromJson(Map<String, dynamic> json) {
    final themeString = json['theme'] as String?;
    if (themeString == 'light') {
      return ThemeMode.light;
    } else if (themeString == 'dark') {
      return ThemeMode.dark;
    } else {
      return ThemeMode.system;
    }
  }

  @override
  Map<String, dynamic>? toJson(ThemeMode state) {
    if (state == ThemeMode.light) {
      return {'theme': 'light'};
    } else if (state == ThemeMode.dark) {
      return {'theme': 'dark'};
    } else {
      return {'theme': 'system'};
    }
  }
}

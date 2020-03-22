import 'package:flutter/material.dart';
import 'package:ishp_flutter_app/themes/dark-yellow.theme.dart';
import 'package:ishp_flutter_app/themes/dark.theme.dart';
import 'package:ishp_flutter_app/themes/light.theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../settings.dart';

class ThemeBloc extends ChangeNotifier {
  var theme = lightTheme();

  ThemeBloc() {
    load();
  }

  save(String theme) async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setString('theme', theme);
  }

  change(String color) {
    switch (color) {
      case 'light':
        {
          theme = lightTheme();
          Settings.theme = "light";
          notifyListeners();
          break;
        }

      case 'dark':
        {
          theme = darkTheme();
          Settings.theme = "dark";
          notifyListeners();
          break;
        }

      case 'dark-yellow':
        {
          theme = darkYellowTheme();
          Settings.theme = "dark-yellow";
          notifyListeners();
          break;
        }

      default:
        {
          theme = lightTheme();
          Settings.theme = "light";
          notifyListeners();
          break;
        }
    }
  }

  Future load() async {
    var prefs = await SharedPreferences.getInstance();
    var theme = prefs.getString('theme');
    Settings.theme = theme == null ? 'light' : theme;
    change(Settings.theme);
  }
}

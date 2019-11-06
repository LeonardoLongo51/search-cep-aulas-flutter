/*import 'package:flutter/material.dart';
import 'package:search_cep/views/home_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    theme: ThemeData(brightness: Brightness.light, primarySwatch: Colors.amber),
    darkTheme: ThemeData(
      brightness: Brightness.dark,
    ),
  ));
}
*/

import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:search_cep/themes/darkTheme.dart';
import 'package:search_cep/themes/lightTheme.dart';
import 'package:search_cep/views/home_page.dart';

class ColorsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DynamicTheme(
        defaultBrightness: Brightness.light,
        data: (brightness) => myThemeLight,
        themedWidgetBuilder: (context, theme) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: theme,
            darkTheme: myThemeDark,
            home: HomePage(),
          );
        });
  }
}

void main() {
  runApp(ColorsApp());
}

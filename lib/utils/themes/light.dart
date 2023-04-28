import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

BorderRadius defaultBorderRadius = BorderRadius.circular(8.0);
// Color
const primary = Color(0xFF2956BD);
MaterialColor primarySwatch = MaterialColor(primary.value, <int, Color>{
  50: primary.withOpacity(0.1),
  100: primary.withOpacity(0.2),
  200: primary.withOpacity(0.3),
  300: primary.withOpacity(0.4),
  400: primary.withOpacity(0.5),
  500: primary.withOpacity(0.6),
  600: primary.withOpacity(0.7),
  700: primary.withOpacity(0.8),
  800: primary.withOpacity(0.9),
  900: primary.withOpacity(1),
});

ThemeData light(BuildContext context) {
  return ThemeData.light().copyWith(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: primarySwatch,
      brightness: Brightness.light,
    ),
    textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      enabledBorder: UnderlineInputBorder(
        borderRadius: defaultBorderRadius,
        borderSide: BorderSide.none,
      ),
      focusedBorder: UnderlineInputBorder(
        borderRadius: defaultBorderRadius,
        borderSide: BorderSide.none,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        padding: const EdgeInsets.all(16.0),
        backgroundColor: primarySwatch,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: defaultBorderRadius,
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.all(16.0),
        side: BorderSide(
          color: primarySwatch.shade200,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: defaultBorderRadius,
        ),
      ),
    ),
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: defaultBorderRadius,
        ),
      ),
    ),
    checkboxTheme: CheckboxThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
      ),
      checkColor: MaterialStateProperty.all(primary),
      fillColor: MaterialStateProperty.all(primary),
      splashRadius: 8.0,
    ),
  );
}

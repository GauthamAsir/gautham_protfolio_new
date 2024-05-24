import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gautham_protfolio_new/src/utilities/constants.dart';

import 'app_colors.dart';
import 'font_sizes.dart';

final themeMode = StateProvider((ref) => ThemeMode.light);

final lightTheme = Provider((ref) => Themes.light);
final darkTheme = Provider((ref) => Themes.dark);

extension CustomTheme on ThemeData {
  ThemeData get custom =>
      brightness == Brightness.dark ? Themes.dark : Themes.light;
}

class Themes {
  static MaterialColor createMaterialColor(Color color) {
    List strengths = <double>[.05];
    final swatch = <int, Color>{};
    final r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    return MaterialColor(color.value, swatch);
  }

  static ThemeData get base => ThemeData.light();

  static ThemeData get light => ThemeData(
        primarySwatch: createMaterialColor(AppColors.primaryColor),
        brightness: Brightness.light,
        textTheme: base.textTheme
            .copyWith(
              headlineLarge: TextStyle(
                fontSize: FontSizes.s28,
              ),
              headlineMedium: TextStyle(
                fontSize: FontSizes.s24,
                color: AppColors.primaryColor,
              ),
              headlineSmall: TextStyle(
                fontSize: FontSizes.s22,
                fontWeight: FontWeight.w700,
              ),
              titleLarge: TextStyle(
                fontSize: FontSizes.s20,
                fontWeight: FontWeight.w600,
              ),
              titleMedium: TextStyle(
                fontSize: FontSizes.s18,
              ),
              //TextFormFieldTextStyle
              titleSmall: TextStyle(
                fontSize: FontSizes.s16,
                fontWeight: FontWeight.w600,
              ),
              bodyLarge: TextStyle(
                fontSize: FontSizes.s14,
                fontWeight: FontWeight.w400,
              ),
              bodyMedium: TextStyle(
                fontSize: FontSizes.s12,
              ),
              bodySmall: TextStyle(
                fontSize: FontSizes.s10,
              ),
              labelLarge: TextStyle(
                fontSize: FontSizes.s14,
              ),
              labelMedium: TextStyle(
                fontSize: FontSizes.s12,
                fontWeight: FontWeight.w400,
              ),
            )
            .apply(
              fontFamily: FontFamily.poppins,
            ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: FontSizes.s18,
            fontWeight: FontWeight.w700,
          ),
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          // fillColor: AppColors.inputFilledColor,
          // filled: true,
          hintStyle: TextStyle(
            fontSize: FontSizes.s12,
            // color: AppColors.hintStyleColor,
            fontWeight: FontWeight.w400,
          ),
          labelStyle: TextStyle(
            fontSize: FontSizes.s12,
            // color: AppColors.hintStyleColor,
            fontWeight: FontWeight.w400,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide:
                const BorderSide(color: AppColors.bodyTextColor, width: 2),
          ),
        ),
        buttonTheme: const ButtonThemeData(
          textTheme: ButtonTextTheme.primary,
          shape: StadiumBorder(),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            minimumSize: WidgetStateProperty.all(const Size.fromHeight(48)),
            side: WidgetStateProperty.all(
              const BorderSide(color: Colors.black),
            ),
            textStyle: WidgetStateProperty.all(
              TextStyle(
                // fontFamily: FontFamily.redHatDisplay,
                fontWeight: FontWeight.w600,
                fontSize: 16.sp,
                color: Colors.black,
              ),
            ),
            // shape: MaterialStateProperty.all(
            //   RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(40),
            //   ),
            // ),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            minimumSize: WidgetStateProperty.all(const Size.fromHeight(52)),
            textStyle: WidgetStateProperty.all(
              TextStyle(
                fontSize: FontSizes.s14,
                fontWeight: FontWeight.w700,
                fontFamily: FontFamily.poppins,
              ),
            ),
            backgroundColor: WidgetStateProperty.all(AppColors.primaryColor),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
            ),
          ),
        ),
        checkboxTheme: CheckboxThemeData(
          checkColor: WidgetStateProperty.all(Colors.white),
          fillColor: WidgetStateProperty.resolveWith(
            (states) {
              if (states.contains(WidgetState.selected)) {
                return Colors.black;
              }
              return null;
            },
          ),
          side: const BorderSide(
              width: 1, color: AppColors.checkBoxInactiveColor),
        ),
      );

  static ThemeData get dark => ThemeData(
        primarySwatch: createMaterialColor(AppColors.primaryColor),
        brightness: Brightness.dark,
        textTheme: base.textTheme
            .copyWith(
              headlineLarge: TextStyle(
                fontSize: FontSizes.s28,
                color: Colors.white,
              ),
              headlineMedium: TextStyle(
                fontSize: FontSizes.s24,
                color: Colors.white,
              ),
              headlineSmall: TextStyle(
                fontSize: FontSizes.s18,
                color: Colors.white,
              ),
              titleLarge: TextStyle(
                fontSize: FontSizes.s18,
                color: Colors.white,
              ),
              titleMedium: TextStyle(
                fontSize: FontSizes.s14,
                color: Colors.white,
              ),
              //TextFormFieldTextStyle
              titleSmall: TextStyle(
                fontSize: FontSizes.s14,
                color: Colors.white,
              ),
              bodyLarge: TextStyle(
                fontSize: FontSizes.s16,
                color: Colors.white,
              ),
              bodyMedium: TextStyle(
                fontSize: FontSizes.s12,
                color: Colors.white,
              ),
              bodySmall: TextStyle(
                fontSize: FontSizes.s10,
                color: Colors.white,
              ),
              labelLarge: TextStyle(
                fontSize: FontSizes.s14,
                color: Colors.white,
              ),
              labelMedium: TextStyle(
                fontSize: FontSizes.s12,
                color: Colors.white,
              ),
            )
            .apply(
              fontFamily: FontFamily.poppins,
            ),
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.transparent,
            elevation: 0,
            titleTextStyle: TextStyle(
              fontSize: FontSizes.s16,
              color: Colors.white,
            ),
            iconTheme: const IconThemeData(
              color: Colors.white,
            )),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: AppColors.darkColor,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide:
                const BorderSide(color: AppColors.primaryColor, width: 2),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.redAccent, width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide:
                const BorderSide(color: AppColors.primaryColor, width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.transparent, width: 2),
          ),
        ),
        buttonTheme: const ButtonThemeData(
          textTheme: ButtonTextTheme.primary,
          shape: StadiumBorder(),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            minimumSize: WidgetStateProperty.all(const Size.fromHeight(52)),
            textStyle: WidgetStateProperty.all(
              TextStyle(fontSize: FontSizes.s12, fontWeight: FontWeight.w400),
            ),
            backgroundColor: WidgetStateProperty.all(AppColors.primaryColor),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
              ),
            ),
          ),
        ),
      );
}

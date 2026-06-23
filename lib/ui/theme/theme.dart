import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff904a49),
      surfaceTint: Color(0xff904a49),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffdad8),
      onPrimaryContainer: Color(0xff733333),
      secondary: Color(0xff8f4951),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffdadb),
      onSecondaryContainer: Color(0xff72333b),
      tertiary: Color(0xff4b5c92),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffdbe1ff),
      onTertiaryContainer: Color(0xff334478),
      error: Color(0xff6f5d0d),
      onError: Color(0xffffffff),
      errorContainer: Color(0xfffbe186),
      onErrorContainer: Color(0xff554600),
      surface: Color(0xfff5fafb),
      onSurface: Color(0xff171d1e),
      onSurfaceVariant: Color(0xff3f484a),
      outline: Color(0xff6f797a),
      outlineVariant: Color(0xffbec8ca),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2b3133),
      inversePrimary: Color(0xffffb3b1),
      primaryFixed: Color(0xffffdad8),
      onPrimaryFixed: Color(0xff3b080c),
      primaryFixedDim: Color(0xffffb3b1),
      onPrimaryFixedVariant: Color(0xff733333),
      secondaryFixed: Color(0xffffdadb),
      onSecondaryFixed: Color(0xff3b0712),
      secondaryFixedDim: Color(0xffffb2b9),
      onSecondaryFixedVariant: Color(0xff72333b),
      tertiaryFixed: Color(0xffdbe1ff),
      onTertiaryFixed: Color(0xff01174b),
      tertiaryFixedDim: Color(0xffb4c4ff),
      onTertiaryFixedVariant: Color(0xff334478),
      surfaceDim: Color(0xffd5dbdc),
      surfaceBright: Color(0xfff5fafb),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeff5f6),
      surfaceContainer: Color(0xffe9eff0),
      surfaceContainerHigh: Color(0xffe3e9ea),
      surfaceContainerHighest: Color(0xffdee3e5),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff5e2324),
      surfaceTint: Color(0xff904a49),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffa15857),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff5d222b),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffa05860),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff223367),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff5a6ba2),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff413500),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff7f6c1d),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff5fafb),
      onSurface: Color(0xff0c1213),
      onSurfaceVariant: Color(0xff2f3839),
      outline: Color(0xff4b5455),
      outlineVariant: Color(0xff656f70),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2b3133),
      inversePrimary: Color(0xffffb3b1),
      primaryFixed: Color(0xffa15857),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff844140),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xffa05860),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff834048),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff5a6ba2),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff425288),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc2c7c9),
      surfaceBright: Color(0xfff5fafb),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeff5f6),
      surfaceContainer: Color(0xffe3e9ea),
      surfaceContainerHigh: Color(0xffd8dedf),
      surfaceContainerHighest: Color(0xffcdd3d4),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff51191b),
      surfaceTint: Color(0xff904a49),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff763535),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff511921),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff75353d),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff16295c),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff36477b),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff362b00),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff574800),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff5fafb),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff252e2f),
      outlineVariant: Color(0xff414b4c),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2b3133),
      inversePrimary: Color(0xffffb3b1),
      primaryFixed: Color(0xff763535),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff591f21),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff75353d),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff591f28),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff36477b),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff1e3063),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffb4babb),
      surfaceBright: Color(0xfff5fafb),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffecf2f3),
      surfaceContainer: Color(0xffdee3e5),
      surfaceContainerHigh: Color(0xffcfd5d6),
      surfaceContainerHighest: Color(0xffc2c7c9),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb3b1),
      surfaceTint: Color(0xffffb3b1),
      onPrimary: Color(0xff571d1f),
      primaryContainer: Color(0xff733333),
      onPrimaryContainer: Color(0xffffdad8),
      secondary: Color(0xffffb2b9),
      onSecondary: Color(0xff561d25),
      secondaryContainer: Color(0xff72333b),
      onSecondaryContainer: Color(0xffffdadb),
      tertiary: Color(0xffb4c4ff),
      onTertiary: Color(0xff1b2d61),
      tertiaryContainer: Color(0xff334478),
      onTertiaryContainer: Color(0xffdbe1ff),
      error: Color(0xffdec56e),
      onError: Color(0xff3b2f00),
      errorContainer: Color(0xff554600),
      onErrorContainer: Color(0xfffbe186),
      surface: Color(0xff0e1415),
      onSurface: Color(0xffdee3e5),
      onSurfaceVariant: Color(0xffbec8ca),
      outline: Color(0xff899294),
      outlineVariant: Color(0xff3f484a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdee3e5),
      inversePrimary: Color(0xff904a49),
      primaryFixed: Color(0xffffdad8),
      onPrimaryFixed: Color(0xff3b080c),
      primaryFixedDim: Color(0xffffb3b1),
      onPrimaryFixedVariant: Color(0xff733333),
      secondaryFixed: Color(0xffffdadb),
      onSecondaryFixed: Color(0xff3b0712),
      secondaryFixedDim: Color(0xffffb2b9),
      onSecondaryFixedVariant: Color(0xff72333b),
      tertiaryFixed: Color(0xffdbe1ff),
      onTertiaryFixed: Color(0xff01174b),
      tertiaryFixedDim: Color(0xffb4c4ff),
      onTertiaryFixedVariant: Color(0xff334478),
      surfaceDim: Color(0xff0e1415),
      surfaceBright: Color(0xff343a3b),
      surfaceContainerLowest: Color(0xff090f10),
      surfaceContainerLow: Color(0xff171d1e),
      surfaceContainer: Color(0xff1b2122),
      surfaceContainerHigh: Color(0xff252b2c),
      surfaceContainerHighest: Color(0xff303637),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffd2d0),
      surfaceTint: Color(0xffffb3b1),
      onPrimary: Color(0xff481315),
      primaryContainer: Color(0xffcb7a79),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffffd1d4),
      onSecondary: Color(0xff48121b),
      secondaryContainer: Color(0xffca7a82),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffd3dbff),
      onTertiary: Color(0xff0e2255),
      tertiaryContainer: Color(0xff7e8fc8),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfff5db81),
      onError: Color(0xff2e2500),
      errorContainer: Color(0xffa58f3e),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff0e1415),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffd4dedf),
      outline: Color(0xffaab4b5),
      outlineVariant: Color(0xff889293),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdee3e5),
      inversePrimary: Color(0xff743434),
      primaryFixed: Color(0xffffdad8),
      onPrimaryFixed: Color(0xff2c0104),
      primaryFixedDim: Color(0xffffb3b1),
      onPrimaryFixedVariant: Color(0xff5e2324),
      secondaryFixed: Color(0xffffdadb),
      onSecondaryFixed: Color(0xff2c0008),
      secondaryFixedDim: Color(0xffffb2b9),
      onSecondaryFixedVariant: Color(0xff5d222b),
      tertiaryFixed: Color(0xffdbe1ff),
      onTertiaryFixed: Color(0xff000d36),
      tertiaryFixedDim: Color(0xffb4c4ff),
      onTertiaryFixedVariant: Color(0xff223367),
      surfaceDim: Color(0xff0e1415),
      surfaceBright: Color(0xff3f4647),
      surfaceContainerLowest: Color(0xff040809),
      surfaceContainerLow: Color(0xff191f20),
      surfaceContainer: Color(0xff23292a),
      surfaceContainerHigh: Color(0xff2d3435),
      surfaceContainerHighest: Color(0xff393f40),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffecea),
      surfaceTint: Color(0xffffb3b1),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffffadab),
      onPrimaryContainer: Color(0xff220002),
      secondary: Color(0xffffebec),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffffacb4),
      onSecondaryContainer: Color(0xff210005),
      tertiary: Color(0xffeeefff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffb0c1fd),
      onTertiaryContainer: Color(0xff000829),
      error: Color(0xffffefc0),
      onError: Color(0xff000000),
      errorContainer: Color(0xffdac16a),
      onErrorContainer: Color(0xff0f0b00),
      surface: Color(0xff0e1415),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffe8f2f3),
      outlineVariant: Color(0xffbbc4c6),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdee3e5),
      inversePrimary: Color(0xff743434),
      primaryFixed: Color(0xffffdad8),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffffb3b1),
      onPrimaryFixedVariant: Color(0xff2c0104),
      secondaryFixed: Color(0xffffdadb),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffffb2b9),
      onSecondaryFixedVariant: Color(0xff2c0008),
      tertiaryFixed: Color(0xffdbe1ff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffb4c4ff),
      onTertiaryFixedVariant: Color(0xff000d36),
      surfaceDim: Color(0xff0e1415),
      surfaceBright: Color(0xff4b5152),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff1b2122),
      surfaceContainer: Color(0xff2b3133),
      surfaceContainerHigh: Color(0xff363c3e),
      surfaceContainerHighest: Color(0xff424849),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}

import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278216826),
      surfaceTint: Color(4278216826),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4289523199),
      onPrimaryContainer: Color(4278198054),
      secondary: Color(4283130473),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4291749871),
      onSecondaryContainer: Color(4278591268),
      tertiary: Color(4283850110),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4292731391),
      onTertiaryContainer: Color(4279441719),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294310652),
      onSurface: Color(4279704606),
      onSurfaceVariant: Color(4282337355),
      outline: Color(4285561211),
      outlineVariant: Color(4290758859),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281086259),
      inversePrimary: Color(4286894823),
      primaryFixed: Color(4289523199),
      onPrimaryFixed: Color(4278198054),
      primaryFixedDim: Color(4286894823),
      onPrimaryFixedVariant: Color(4278210140),
      secondaryFixed: Color(4291749871),
      onSecondaryFixed: Color(4278591268),
      secondaryFixedDim: Color(4289907666),
      onSecondaryFixedVariant: Color(4281551441),
      tertiaryFixed: Color(4292731391),
      onTertiaryFixed: Color(4279441719),
      tertiaryFixedDim: Color(4290757867),
      onTertiaryFixedVariant: Color(4282336613),
      surfaceDim: Color(4292205533),
      surfaceBright: Color(4294310652),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293915895),
      surfaceContainer: Color(4293521393),
      surfaceContainerHigh: Color(4293192171),
      surfaceContainerHighest: Color(4292797413),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278209111),
      surfaceTint: Color(4278216826),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4280909714),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4281288269),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4284577919),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4282073441),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4285363093),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294310652),
      onSurface: Color(4279704606),
      onSurfaceVariant: Color(4282139719),
      outline: Color(4283982179),
      outlineVariant: Color(4285758591),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281086259),
      inversePrimary: Color(4286894823),
      primaryFixed: Color(4280909714),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278216055),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4284577919),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4282998886),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4285363093),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4283718267),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292205533),
      surfaceBright: Color(4294310652),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293915895),
      surfaceContainer: Color(4293521393),
      surfaceContainerHigh: Color(4293192171),
      surfaceContainerHighest: Color(4292797413),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278199854),
      surfaceTint: Color(4278216826),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4278209111),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4279051563),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4281288269),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4279902270),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4282073441),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294310652),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4280100136),
      outline: Color(4282139719),
      outlineVariant: Color(4282139719),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281086259),
      inversePrimary: Color(4291490815),
      primaryFixed: Color(4278209111),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278202940),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4281288269),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4279840822),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4282073441),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4280625993),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292205533),
      surfaceBright: Color(4294310652),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293915895),
      surfaceContainer: Color(4293521393),
      surfaceContainerHigh: Color(4293192171),
      surfaceContainerHighest: Color(4292797413),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4286894823),
      surfaceTint: Color(4286894823),
      onPrimary: Color(4278203968),
      primaryContainer: Color(4278210140),
      onPrimaryContainer: Color(4289523199),
      secondary: Color(4289907666),
      onSecondary: Color(4280103994),
      secondaryContainer: Color(4281551441),
      onSecondaryContainer: Color(4291749871),
      tertiary: Color(4290757867),
      onTertiary: Color(4280823629),
      tertiaryContainer: Color(4282336613),
      onTertiaryContainer: Color(4292731391),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279178262),
      onSurface: Color(4292797413),
      onSurfaceVariant: Color(4290758859),
      outline: Color(4287206037),
      outlineVariant: Color(4282337355),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292797413),
      inversePrimary: Color(4278216826),
      primaryFixed: Color(4289523199),
      onPrimaryFixed: Color(4278198054),
      primaryFixedDim: Color(4286894823),
      onPrimaryFixedVariant: Color(4278210140),
      secondaryFixed: Color(4291749871),
      onSecondaryFixed: Color(4278591268),
      secondaryFixedDim: Color(4289907666),
      onSecondaryFixedVariant: Color(4281551441),
      tertiaryFixed: Color(4292731391),
      onTertiaryFixed: Color(4279441719),
      tertiaryFixedDim: Color(4290757867),
      onTertiaryFixedVariant: Color(4282336613),
      surfaceDim: Color(4279178262),
      surfaceBright: Color(4281612860),
      surfaceContainerLowest: Color(4278783761),
      surfaceContainerLow: Color(4279704606),
      surfaceContainer: Color(4279967778),
      surfaceContainerHigh: Color(4280625965),
      surfaceContainerHighest: Color(4281349688),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4287223531),
      surfaceTint: Color(4286894823),
      onPrimary: Color(4278196511),
      primaryContainer: Color(4283210671),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4290170839),
      onSecondary: Color(4278262047),
      secondaryContainer: Color(4286420380),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4291021295),
      onTertiary: Color(4279047217),
      tertiaryContainer: Color(4287205299),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279178262),
      onSurface: Color(4294376702),
      onSurfaceVariant: Color(4291022031),
      outline: Color(4288390311),
      outlineVariant: Color(4286350728),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292797413),
      inversePrimary: Color(4278210398),
      primaryFixed: Color(4289523199),
      onPrimaryFixed: Color(4278195225),
      primaryFixedDim: Color(4286894823),
      onPrimaryFixedVariant: Color(4278205511),
      secondaryFixed: Color(4291749871),
      onSecondaryFixed: Color(4278195225),
      secondaryFixedDim: Color(4289907666),
      onSecondaryFixedVariant: Color(4280498752),
      tertiaryFixed: Color(4292731391),
      onTertiaryFixed: Color(4278718252),
      tertiaryFixedDim: Color(4290757867),
      onTertiaryFixedVariant: Color(4281218131),
      surfaceDim: Color(4279178262),
      surfaceBright: Color(4281612860),
      surfaceContainerLowest: Color(4278783761),
      surfaceContainerLow: Color(4279704606),
      surfaceContainer: Color(4279967778),
      surfaceContainerHigh: Color(4280625965),
      surfaceContainerHighest: Color(4281349688),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294245631),
      surfaceTint: Color(4286894823),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4287223531),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294245631),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4290170839),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294769407),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4291021295),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279178262),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294245631),
      outline: Color(4291022031),
      outlineVariant: Color(4291022031),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292797413),
      inversePrimary: Color(4278202168),
      primaryFixed: Color(4290441215),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4287223531),
      onPrimaryFixedVariant: Color(4278196511),
      secondaryFixed: Color(4292013043),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4290170839),
      onSecondaryFixedVariant: Color(4278262047),
      tertiaryFixed: Color(4293125631),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4291021295),
      onTertiaryFixedVariant: Color(4279047217),
      surfaceDim: Color(4279178262),
      surfaceBright: Color(4281612860),
      surfaceContainerLowest: Color(4278783761),
      surfaceContainerLow: Color(4279704606),
      surfaceContainer: Color(4279967778),
      surfaceContainerHigh: Color(4280625965),
      surfaceContainerHighest: Color(4281349688),
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

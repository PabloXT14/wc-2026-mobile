import 'package:material_ui/material_ui.dart';
import 'package:wc_2026_mobile/ui/core/theme/app_colors.dart';
import 'package:wc_2026_mobile/ui/core/theme/app_dimensions.dart';
import 'package:wc_2026_mobile/ui/core/theme/app_text_styles.dart';

final class AppTheme._() {
  static const _colorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: AppColors.red500,
    onPrimary: AppColors.white,
    secondary: AppColors.yellow500,
    onSecondary: AppColors.ink,
    tertiary: AppColors.green500,
    onTertiary: AppColors.white,
    error: AppColors.red500,
    onError: AppColors.white,
    surface: AppColors.white,
    onSurface: AppColors.ink,
    onSurfaceVariant: AppColors.gray600,
    surfaceContainerLowest: AppColors.cream500,
    surfaceContainerHigh: AppColors.cream600,
    outline: AppColors.borderStrong,
    outlineVariant: AppColors.border,
  );

  static ButtonStyle _buttonStyle({
    required Color backgroundColor,
    required Color foregroundColor,
    BorderSide? borderSide,
    double height = AppDimensions.buttonHeight,
  }) {
    return FilledButton.styleFrom(
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      disabledBackgroundColor: AppColors.border,
      disabledForegroundColor: AppColors.gray600,
      textStyle: AppTextStyles.button,
      minimumSize: Size(64, height),
      padding: EdgeInsets.symmetric(horizontal: 24),
      shape: StadiumBorder(),
      side: borderSide,
      elevation: 0, // Remove the default shadow
    );
  }

  static final primaryButton = _buttonStyle(
    backgroundColor: AppColors.yellow500,
    foregroundColor: AppColors.ink,
  );

  static final darkButton = _buttonStyle(
    backgroundColor: AppColors.ink,
    foregroundColor: AppColors.yellow500,
  );

  static final dangerButton = _buttonStyle(
    backgroundColor: AppColors.red500,
    foregroundColor: AppColors.white,
  );

  static final secondaryButton = _buttonStyle(
    backgroundColor: AppColors.white,
    foregroundColor: AppColors.ink,
    borderSide: BorderSide(color: AppColors.borderStrong, width: 1.5),
  );

  static final dangerOutlineButton = _buttonStyle(
    backgroundColor: AppColors.white,
    foregroundColor: AppColors.red500,
    borderSide: BorderSide(
      color: AppColors.red500.withValues(alpha: .45),
      width: 1.5,
    ),
  );

  static final ghostButton = _buttonStyle(
    backgroundColor: AppColors.white.withValues(alpha: .15),
    foregroundColor: AppColors.white,
    borderSide: BorderSide(
      color: AppColors.white.withValues(alpha: .4),
      width: 1.5,
    ),
    height: 44,
  );

  static final dangerGhostButton = _buttonStyle(
    backgroundColor: AppColors.red500.withValues(alpha: .2),
    foregroundColor: AppColors.white,
    borderSide: BorderSide(
      color: AppColors.red500.withValues(alpha: .6),
      width: 1.5,
    ),
    height: 44,
  );

  static OutlineInputBorder _inputBorder({
    required Color color,
    required double width,
  }) {
    return OutlineInputBorder(
      borderRadius: AppDimensions.borderRadiusSm,
      borderSide: BorderSide(color: color, width: width),
    );
  }

  static const _searchBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(12)),
    borderSide: BorderSide.none,
  );

  static InputDecoration searchInput() {
    return InputDecoration(
      filled: true,
      fillColor: Color(0xFFF5F5F0),
      hintText: 'Buscar...',
      hintStyle: AppTextStyles.body.copyWith(
        fontSize: 12,
        color: AppColors.gray600,
      ),
      prefixIcon: Icon(Icons.search, size: 18, color: AppColors.gray600),

      // Os três a seguir precisam ser específicos: assim o que não vier aqui cai na borda padrão de 1.5 do `inputDecorationTheme` do tema, e a busca não tem borda nenhuma
      border: _searchBorder,
      enabledBorder: _searchBorder,
      focusedBorder: _searchBorder,
    );
  }

  // THEMES

  static var light = ThemeData(
    colorScheme: _colorScheme,
    scaffoldBackgroundColor: AppColors.cream500,
    textTheme: AppTextStyles.textTheme,
    filledButtonTheme: FilledButtonThemeData(style: primaryButton),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.white,
      contentPadding: .symmetric(horizontal: 18, vertical: 13.5),
      border: _inputBorder(color: AppColors.border, width: 1.5),

      hintStyle: AppTextStyles.body.copyWith(color: AppColors.gray600),

      errorStyle: AppTextStyles.body.copyWith(
        fontSize: 10,
        color: AppColors.red500,
      ),

      enabledBorder: _inputBorder(color: AppColors.border, width: 1.5),
      disabledBorder: _inputBorder(color: AppColors.border, width: 1.5),

      // Foco em verde, não na cor pimaria do tema
      focusedBorder: _inputBorder(color: AppColors.green500, width: 2),

      errorBorder: _inputBorder(color: AppColors.red500, width: 2),

      focusedErrorBorder: _inputBorder(color: AppColors.red500, width: 2),
    ),

    checkboxTheme: CheckboxThemeData(
      fillColor: WidgetStateProperty.resolveWith(
        (states) => states.contains(WidgetState.selected)
            ? AppColors.red500
            : Colors.transparent,
      ),

      checkColor: WidgetStateProperty.all(AppColors.white),
      side: BorderSide(color: AppColors.borderStrong, width: 1.5),

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),

      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      visualDensity: VisualDensity(
        horizontal: -4,
        vertical: -4,
      ), // Remove o padding interno do checkbox
    ),

    progressIndicatorTheme: ProgressIndicatorThemeData(
      trackGap: 0,
      stopIndicatorRadius: 0,
    ),

    cardTheme: CardThemeData(
      color: AppColors.white,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      shadowColor: Colors.transparent,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: AppDimensions.borderRadiusMd),
    ),

    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: AppColors.white,
      surfaceTintColor: Colors.transparent,
      shadowColor: Colors.transparent,
      elevation: 0,
      height: 68,
      indicatorColor: Colors.transparent,
      labelBehavior: .alwaysShow,
      labelTextStyle: WidgetStateProperty.resolveWith(
        (states) => AppTextStyles.overline.copyWith(
          color: states.contains(WidgetState.selected)
              ? AppColors.red500
              : AppColors.gray600,
        ),
      ),
      iconTheme: WidgetStateProperty.resolveWith(
        (states) => IconThemeData(
          size: 22,
          color: states.contains(WidgetState.selected)
              ? AppColors.red500
              : AppColors.gray600,
        ),
      ),
    ),

    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      foregroundColor: AppColors.ink,
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: true,
      titleTextStyle: AppTextStyles.heading,
    ),
  );
}

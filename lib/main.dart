import 'package:material_ui/material_ui.dart';

import 'package:wc_2026_mobile/routing/router.dart';
import 'package:wc_2026_mobile/ui/core/theme/app_theme.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      // OBS: This is a workaround to make Material UI work with GoRouter. In the future, we should remove this
      // This is a temporary solution to ensure that the Material UI components work correctly with the GoRouter.
      builder: (context, child) {
        return MaterialUiCompatibilityBridge(child: child!);
      },
      routerConfig: router,
    );
  }
}

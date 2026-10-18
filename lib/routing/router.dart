import 'package:go_router/go_router.dart';
import 'package:wc_2026_mobile/routing/routes.dart';
import 'package:wc_2026_mobile/ui/auth/login/login_screen.dart';
import 'package:wc_2026_mobile/ui/splash/splash_screen.dart';
import 'package:wc_2026_mobile/ui/welcome/welcome_screen.dart';

GoRouter router = GoRouter(
  initialLocation: Routes.login,
  routes: [
    GoRoute(path: Routes.splash, builder: (context, state) => SplashScreen()),
    GoRoute(path: Routes.welcome, builder: (context, state) => WelcomeScreen()),
    GoRoute(
      path: Routes.login,
      builder: (context, state) => const LoginScreen(),
    ),
  ],
);

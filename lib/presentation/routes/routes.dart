import 'package:go_router/go_router.dart';

import '../main/main_screen.dart';
import '../pages/splash/splash_page.dart';
import 'routes_path.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: RoutesPath.splash,
      name: 'splash',
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: RoutesPath.main,
      name: 'main',
      builder: (context, state) => const MainScreen(),
    ),
  ],
  initialLocation: RoutesPath.splash,
);

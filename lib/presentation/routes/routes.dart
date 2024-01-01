import '../pages/home/home_page.dart';
import '../pages/splash/splash_page.dart';
import 'package:go_router/go_router.dart';

import 'routes_path.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: RoutesPath.splash,
      name: 'splash',
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: RoutesPath.home,
      name: 'home',
      builder: (context, state) => const HomePage(),
    ),
  ],
  initialLocation: RoutesPath.splash,
);

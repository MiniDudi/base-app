import 'package:base_app/navigation/router_guard.dart';
import 'package:go_router/go_router.dart';

import '../features/auth/presentation/pages/login.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    redirect: RouteGuard.redirect,
    routes: [
      GoRoute(
        path: '/login',
        name: 'login',
        builder: (context, state) => const LoginPage(),
      ),
    ],
  );
}

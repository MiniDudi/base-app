import 'package:base_app/features/auth/presentation/pages/register.dart';
import 'package:base_app/navigation/router_guard.dart';
import 'package:go_router/go_router.dart';

import '../features/auth/presentation/pages/email_sended.dart';
import '../features/auth/presentation/pages/forgot_password.dart';
import '../features/auth/presentation/pages/login.dart';
import '../features/home/presentation/pages/home_page.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    redirect: RouteGuard.redirect,
    routes: [
      GoRoute(
        path: '/',
        name: LoginPage.name,
        builder: (context, state) => const LoginPage(),
        routes: [
          GoRoute(
            path: '/forgot-password',
            name: ForgotPasswordPage.name,
            builder: (context, state) => const ForgotPasswordPage(),
            routes: [
              GoRoute(
                path: '/email-sent',
                name: EmailSentPage.name,
                builder: (context, state) => const EmailSentPage(),
              ),
            ],
          ),
          GoRoute(
            path: '/register',
            name: 'register',
            builder: (context, state) => const RegisterPage(),
          ),
        ],
      ),
      GoRoute(
        path: '/home',
        name: HomePage.name,
        builder: (context, state) => const HomePage(),
      ),
    ],
  );
}

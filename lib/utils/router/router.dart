import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:miabekinedoctor/screens/authentication/register.dart';
import 'package:miabekinedoctor/screens/authentication/login.dart';
import 'package:miabekinedoctor/screens/authentication/register_speciality.dart';
import 'package:miabekinedoctor/screens/home/home.dart';

GlobalKey<NavigatorState> _rootNavigationKey = GlobalKey();

Widget _pageTransition(BuildContext context, Animation<double> animation,
    Animation<double> secondAnimation, Widget child) {
  return FadeTransition(
    opacity: animation,
    child: child,
  );
}

GoRouter router = GoRouter(
  navigatorKey: _rootNavigationKey,
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) {
        return const CustomTransitionPage(
          child: Home(),
          transitionsBuilder: _pageTransition,
        );
      },
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigationKey,
      path: '/login',
      pageBuilder: (context, state) {
        return const CustomTransitionPage(
          child: Login(),
          transitionsBuilder: _pageTransition,
        );
      },
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigationKey,
      path: '/register',
      pageBuilder: (context, state) {
        return const CustomTransitionPage(
          child: Register(),
          transitionsBuilder: _pageTransition,
        );
      },
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigationKey,
      path: '/register-speciality',
      pageBuilder: (context, state) {
        return const CustomTransitionPage(
          child: RegisterSpeciality(),
          transitionsBuilder: _pageTransition,
        );
      },
    ),
  ],
);

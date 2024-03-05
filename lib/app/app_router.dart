import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food_fabrica/features/cart/view/cart_page.dart';
import 'package:food_fabrica/features/catalog/view/catalog_page.dart';
import 'package:food_fabrica/features/favorite/view/favorite_page.dart';
import 'package:food_fabrica/features/home/view/home_page.dart';
import 'package:food_fabrica/features/main/bottombar/view/main_page.dart';
import 'package:food_fabrica/features/menu/view/menu_page.dart';
import 'package:go_router/go_router.dart';

CustomTransitionPage buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(opacity: animation, child: child);
    },
  );
}

GoRouter goRouter(
  GlobalKey<NavigatorState> key,
  GlobalKey<NavigatorState> shellKey,
  // Authenticator authenticator,
) {
  return GoRouter(
      initialLocation: '/home',
      debugLogDiagnostics: kDebugMode,
      navigatorKey: key,
      restorationScopeId: 'app',
      routes: [
        ShellRoute(
          navigatorKey: shellKey,
          routes: [
            GoRoute(
              path: '/home',
              pageBuilder: (context, state) =>
                  buildPageWithDefaultTransition<void>(
                context: context,
                state: state,
                child: HomePage(),
              ),
            ),
            GoRoute(
              path: '/catalog',
              pageBuilder: (context, state) =>
                  buildPageWithDefaultTransition<void>(
                context: context,
                state: state,
                child: const CatalogPage(),
              ),
            ),
            GoRoute(
              path: '/favorite',
              pageBuilder: (context, state) =>
                  buildPageWithDefaultTransition<void>(
                context: context,
                state: state,
                child: const FavoritePage(),
              ),
            ),
            GoRoute(
              path: '/cart',
              pageBuilder: (context, state) =>
                  buildPageWithDefaultTransition<void>(
                context: context,
                state: state,
                child: const CartPage(),
              ),
            ),
            GoRoute(
              path: '/menu',
              pageBuilder: (context, state) =>
                  buildPageWithDefaultTransition<void>(
                context: context,
                state: state,
                child: MenuPage(),
              ),
            ),
          ],
          builder: (context, state, child) {
            return MainPage(child: child);
          },
          pageBuilder: (context, state, child) =>
              buildPageWithDefaultTransition<void>(
            context: context,
            state: state,
            child: MainPage(child: child),
          ),
        ),
      ]);
}

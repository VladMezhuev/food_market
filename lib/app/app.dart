import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_fabrica/app/app_router.dart';
import 'package:food_fabrica/app/cubit/app_cubit.dart';
import 'package:food_fabrica/app/theme.dart';
import 'package:food_fabrica/core/di/get_it.dart';
import 'package:food_fabrica/features/auth/auth/view/auth_provider.dart';
import 'package:food_fabrica/gen/fonts.gen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<AppCubit>(),
      child: AppView(),
    );
  }
}

final navigatorKey = GlobalKey<NavigatorState>();
final shellNavigatorKey = GlobalKey<NavigatorState>();

final _router = goRouter(
  navigatorKey,
  shellNavigatorKey,
  // getIt.get(),
);

class AppView extends StatelessWidget {
  AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return MaterialApp.router(
          restorationScopeId: 'app',
          debugShowCheckedModeBanner: false,
          routerConfig: _router,
          // localizationsDelegates: context.localizationDelegates,
          // ..add(CountryLocalizations.delegate),
          // locale: Locale(state.locale.languageCode),
          // supportedLocales: context.supportedLocales,
          // localeResolutionCallback: (locale, supportedLocales) {
          //   if (state.locale.languageCode.isNotEmpty) {
          //     Locale currentLocale = Locale(state.locale.languageCode);
          //     context.setLocale(currentLocale);
          //     return currentLocale;
          //   }
          //   return supportedLocales.first;
          // },
          builder: (BuildContext context, Widget? child) => AuthProvider(
            navigatorKey: navigatorKey,
            child: child,
          ),
          themeMode: state.themeMode,
          theme: MyThemes.lightTheme,
          darkTheme: MyThemes.darkTheme,
        );
      },
    );
  }
}

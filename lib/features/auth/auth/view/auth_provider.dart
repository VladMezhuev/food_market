import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_fabrica/core/di/get_it.dart';
import 'package:food_fabrica/features/auth/auth/cubit/auth_cubit.dart';
import 'package:food_fabrica/features/auth/auth/cubit/auth_event.dart';
import 'package:go_router/go_router.dart';


class AuthProvider extends StatelessWidget {
  final Widget? child;
  final GlobalKey<NavigatorState> navigatorKey;

  const AuthProvider({
    Key? key,
    required this.child,
    required this.navigatorKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => getIt.get<AuthCubit>(),
      child: BlocListener<AuthCubit, AuthState>(
        listenWhen: (AuthState previous, AuthState current) {
          return previous.event != current.event;
        },
        listener: (BuildContext context, AuthState state) {
          if (state.event is NavToLogin) {
            navigatorKey.currentContext?.go('/login');
          }
          if (state.event is ConfirmLogout) {
            // _showLogoutDialog(navigatorKey.currentContext!, () {
            //   context.read<AuthCubit>().onLogoutConfirmed();
            // });
          }
        },
        child: child,
      ),
    );
  }

  Future<void> _showLogoutDialog(BuildContext context, Function() onLogout) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          title:  Padding(
            padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
            child: Text(
              'Exit',
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Expanded(
                  //   child: AppSolidButton(
                  //     text: 'buttons.yes'.tr(),
                  //     onTap: onLogout,
                  //   ),
                  // ),
                  // const SizedBox(width: 15),
                  // Expanded(
                  //   child: AppSolidButton(
                  //     text: 'buttons.no'.tr(),
                  //     onTap: () => context.pop(),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

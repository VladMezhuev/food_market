import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_fabrica/core/di/get_it.dart';
import 'package:food_fabrica/core/utils/keyboard_visibility_builder.dart';
import 'package:food_fabrica/features/main/bottombar/cubit/main_cubit.dart';
import 'package:food_fabrica/features/main/bottombar/view/bottom_bar.dart';
import 'package:food_fabrica/gen/colors.gen.dart';

class MainPage extends StatelessWidget {
  final Widget child;

  const MainPage({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<MainCubit>(),
      child: _MainView(child: child),
    );
  }
}

class _MainView extends StatelessWidget {
  final Widget child;

  const _MainView({
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainCubit, MainState>(
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: AppColors.white,
          bottomNavigationBar: KeyboardVisibilityBuilder(
            builder: (context, child, isKeyboardVisible) {
              return isKeyboardVisible
                  ? const SizedBox.shrink()
                  : const BottomBarView();
            },
            child: Container(),
          ),
          // body: AnnotatedRegion<SystemUiOverlayStyle>(
          //   value: SystemUiOverlayStyle.dark.copyWith(
          //     systemNavigationBarColor:
          //         Theme.of(context).appBarTheme.backgroundColor,
          //   ),
          //   child: child,
          // ),
          body: child,
        );
      },
    );
  }
}

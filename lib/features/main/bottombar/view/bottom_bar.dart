import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_fabrica/features/main/bottombar/cubit/main_cubit.dart';
import 'package:food_fabrica/gen/assets.gen.dart';
import 'package:food_fabrica/gen/colors.gen.dart';
import 'package:go_router/go_router.dart';

class BottomBarView extends StatelessWidget {
  const BottomBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainCubit, MainState>(
      builder: (context, state) {
        return BottomAppBar(
          elevation: 0,
          child: MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              height: 70,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        context.read<MainCubit>().onSetIndex(1);
                        context.go('/home');
                      },
                      child: Center(
                        child: AppAssets.icons.icMenuHome.svg(
                          color: state.index == 1
                              ? Theme.of(context).primaryColor
                              : AppColors.green,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        context.read<MainCubit>().onSetIndex(2);
                        context.go('/catalog');
                      },
                      child: Center(
                        child: AppAssets.icons.icMenuArchive.svg(
                          color: state.index == 2
                              ? Theme.of(context).primaryColor
                              : AppColors.green,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        context.read<MainCubit>().onSetIndex(3);
                        context.go('/favorite');
                      },
                      child: Center(
                        child: AppAssets.icons.icMenuLike.svg(
                          color: state.index == 3
                              ? Theme.of(context).primaryColor
                              : AppColors.green,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        context.read<MainCubit>().onSetIndex(4);
                        context.go('/cart');
                      },
                      child: Center(
                        child: AppAssets.icons.icMenuCart.svg(
                          color: state.index == 4
                              ? Theme.of(context).primaryColor
                              : AppColors.green,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        context.read<MainCubit>().onSetIndex(5);
                        context.go('/menu');
                      },
                      child: Center(
                        child: AppAssets.icons.icMenuMenu.svg(
                          color: state.index == 5
                              ? Theme.of(context).primaryColor
                              : AppColors.green,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

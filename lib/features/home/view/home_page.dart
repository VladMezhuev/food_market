import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_fabrica/app/cubit/app_cubit.dart';
import 'package:food_fabrica/core/di/get_it.dart';
import 'package:food_fabrica/core/styles/text_styles.dart';
import 'package:food_fabrica/core/widgets/buttons/app_solid_button.dart';
import 'package:food_fabrica/core/widgets/common/logo_row.dart';
import 'package:food_fabrica/features/home/cubit/home_cubit.dart';
import 'package:food_fabrica/gen/assets.gen.dart';
import 'package:food_fabrica/gen/colors.gen.dart';
import 'package:food_fabrica/gen/fonts.gen.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<HomeCubit>(),
      child: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  _HomeView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.black,
      body: SafeArea(
        child: Stack(
          children: [
            const _BackgroundImage(),
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: LogoRow(),
                  ),
                  const SizedBox(height: 15),
                  const _SliderWidget(),
                  const SizedBox(height: 0),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 45,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Замовляй улюблені страви в',
                              style: textOsLhMdGreen,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              'Одесі',
                              style: textOsLhMdUnderline,
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          'Зустрічайте оновлене меню заморожених напівфабрикатів!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: FontFamily.oswald,
                            fontSize: 35,
                            color: AppColors.white,
                          ),
                        ),
                        const SizedBox(height: 30),
                        SizedBox(
                          width: 250,
                          child: AppSolidButton(
                            text: 'Меню',
                            onTap: () {
                              context.read<AppCubit>().onToggleTheme();
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SliderWidget extends StatelessWidget {
  const _SliderWidget();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const _ShadowWidget(),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25).copyWith(
                left: 35,
              ),
              child: SizedBox(
                width: double.infinity,
                height: 285,
                child: AppAssets.images.slideFirst.image(
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const _DotsRow(),
          ],
        ),
      ],
    );
  }
}

class _BackgroundImage extends StatelessWidget {
  const _BackgroundImage();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            AppAssets.images.patternVertical.image(),
          ],
        ),
      ),
    );
  }
}

class _DotsRow extends StatelessWidget {
  const _DotsRow();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        return _DotWidget(isActive: index + 1 == 2);
      }),
    );
  }
}

class _DotWidget extends StatelessWidget {
  final bool isActive;

  const _DotWidget({
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9),
      child: Container(
        width: 5,
        height: 5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            width: 1.23,
            color: AppColors.white,
          ),
          color: isActive ? AppColors.transparent : AppColors.white,
        ),
      ),
    );
  }
}

class _ShadowWidget extends StatelessWidget {
  const _ShadowWidget();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 50),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.7,
          height: 330,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(200),
            boxShadow: [
              BoxShadow(
                color: AppColors.green.withOpacity(0.6),
                blurRadius: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

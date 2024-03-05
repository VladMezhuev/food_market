import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_fabrica/core/styles/text_styles.dart';
import 'package:food_fabrica/features/main/bottombar/cubit/main_cubit.dart';
import 'package:go_router/go_router.dart';

class MenuList extends StatelessWidget {
  MenuList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            context.go('/home');
            context.read<MainCubit>().onSetIndex(1);
          },
          child: Text(
            'Головна',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        const SizedBox(height: 30),
        InkWell(
          onTap: () {},
          child: const Text(
            'Меню',
            style: textMdMdGreen,
          ),
        ),
        const SizedBox(height: 30),
        InkWell(
          onTap: () {},
          child: Text(
            'Доставка',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        const SizedBox(height: 30),
        InkWell(
          onTap: () {},
          child: Text(
            'Про нас',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        const SizedBox(height: 30),
        InkWell(
          onTap: () {},
          child: Text(
            'Контакты',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        const SizedBox(height: 30),
        InkWell(
          onTap: () {},
          child: Text(
            'Акції',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}

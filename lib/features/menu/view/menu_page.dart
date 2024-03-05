import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_fabrica/app/cubit/app_cubit.dart';
import 'package:food_fabrica/core/di/get_it.dart';
import 'package:food_fabrica/core/widgets/common/logo_row.dart';
import 'package:food_fabrica/features/menu/cubit/menu_cubit.dart';
import 'package:food_fabrica/features/menu/widgets/bank_row.dart';
import 'package:food_fabrica/features/menu/widgets/emails_list.dart';
import 'package:food_fabrica/features/menu/widgets/menu_list.dart';
import 'package:food_fabrica/features/menu/widgets/phones_list.dart';
import 'package:food_fabrica/gen/colors.gen.dart';

final phonesList = [
  '+38 (063) 566 56 52',
  '+38 (073) 99 77 977',
];

final emailList = ['info@stolovaya.com.ua'];

class MenuPage extends StatelessWidget {
  MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<MenuCubit>(),
      child: _MenuView(),
    );
  }
}

class _MenuView extends StatelessWidget {
  _MenuView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LogoRow(),
                const SizedBox(height: 60),
                MenuList(),
                const SizedBox(height: 62),
                PhonesList(list: phonesList),
                const SizedBox(height: 10),
                EmailsList(list: emailList),
                const SizedBox(height: 40),
                const BankRow(),
                const SizedBox(height: 40),
                Center(
                  child: InkWell(
                    onTap: () {
                      context.read<AppCubit>().onToggleTheme();
                    },
                    child: Text(
                      'Change theme',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

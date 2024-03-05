import 'package:flutter/material.dart';
import 'package:food_fabrica/gen/colors.gen.dart';

class CircularIndicator extends StatelessWidget {
  final double size;

  const CircularIndicator({
    this.size = 30,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
          height: size,
          width: size,
          child: const CircularProgressIndicator(
            color: AppColors.green,
          )),
    );
  }
}

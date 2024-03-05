import 'package:flutter/material.dart';
import 'package:food_fabrica/core/widgets/indicators/circular_indicator.dart';
import 'package:food_fabrica/gen/colors.gen.dart';

class AppSolidButton extends StatelessWidget {
  final bool showLoading;
  final String text;
  final Function() onTap;
  final EdgeInsets? padding;
  final bool isMaxWidth;
  final Color? color;
  final Color? textColor;
  final bool? enable;
  final double? radius;
  final double? height;
  final double? fontSize;

  const AppSolidButton({
    this.showLoading = false,
    required this.text,
    required this.onTap,
    this.padding,
    this.height,
    this.enable,
    this.color,
    this.textColor,
    this.isMaxWidth = true,
    this.radius,
    this.fontSize = 16,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Visibility(
          visible: showLoading == true,
          child: const CircularIndicator(),
        ),
        SizedBox(
          height: height ?? 50,
          width: isMaxWidth ? MediaQuery.of(context).size.width : null,
          child: Visibility(
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            visible: !showLoading,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                foregroundColor: color ?? AppColors.green,
                backgroundColor: color ?? AppColors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radius ?? 100),
                ),
              ),
              onPressed: () {
                FocusManager.instance.primaryFocus?.unfocus();
                onTap();
              },
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                  color: AppColors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

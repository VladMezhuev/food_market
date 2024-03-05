import 'package:flutter/material.dart';
import 'package:food_fabrica/gen/assets.gen.dart';

class LogoRow extends StatelessWidget {
  LogoRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: AppAssets.images.pattern.image(
                height: 54,
              ),
            ),
            const SizedBox(width: 50),
            Expanded(
              child: AppAssets.images.patternReverse.image(
                height: 54,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Center(
            child: Theme.of(context).brightness == Brightness.light
                ? AppAssets.images.logo.image(height: 45)
                : AppAssets.images.logoLight.image(height: 45),
          ),
        )
      ],
    );
  }
}

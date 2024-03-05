import 'package:flutter/material.dart';
import 'package:food_fabrica/gen/assets.gen.dart';

class BankRow extends StatelessWidget {
  const BankRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AppAssets.images.bankPumb.image(height: 34),
        const SizedBox(width: 11),
        AppAssets.images.bankMastercard.image(height: 34),
        const SizedBox(width: 11),
        AppAssets.images.bankVisa.image(height: 34),
      ],
    );
  }
}

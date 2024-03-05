import 'package:flutter/material.dart';
import 'package:food_fabrica/core/styles/text_styles.dart';
import 'package:food_fabrica/gen/colors.gen.dart';

class PhonesList extends StatelessWidget {
  final List<String> list;

  const PhonesList({
    super.key,
    required this.list,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(list.length, (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: InkWell(
            child: Text(
              list[index],
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        );
      }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constant/sizes.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBorder = true,
  });
  final String text;
  final IconData? icon;
  final  showBorder;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: Sizes.defaultSpace),
        child: Container(
          padding: const EdgeInsets.all(Sizes.md),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Sizes.cardRadiusLg),
            border: showBorder? Border.all(color: Colors.grey): null,
          ),
          child: Row(
            children: [
              Icon(icon),
              const SizedBox(width: Sizes.spaceBtwItems),
              Text(text, style: Theme.of(context).textTheme.bodySmall,)
            ],
          ),
        ),
      ),
    );
  }
}
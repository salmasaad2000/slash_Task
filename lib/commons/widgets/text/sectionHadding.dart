import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';



class SecationHead extends StatelessWidget {
  const SecationHead({
    super.key,
    required this.sectionText,
    this.showActionButtom = true ,
    this.onPressed,
  });
  final String sectionText;
  final bool showActionButtom;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          sectionText,
          style: Theme.of(context).textTheme.bodyLarge,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if(showActionButtom) Row(
          children: [
            const Text('see all'),
            IconButton(
                onPressed: onPressed,
                icon:const Icon(Iconsax.arrow_right_3) ),
          ],
        ),

      ],
    );

  }
}
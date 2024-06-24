import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class NoteficationIcon extends StatelessWidget {
  const NoteficationIcon({
    super.key,
    required this.onPressed,
    this.iconColor,

  });
  final VoidCallback onPressed;
  final Color? iconColor;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon:Icon(Iconsax.notification, color: iconColor,),
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(100)

            ),
          ),
        ),

      ],
    );
  }
}
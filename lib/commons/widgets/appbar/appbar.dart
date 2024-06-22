import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:slash_task/utils/constant/sizes.dart';
import 'package:slash_task/utils/devices/devices_utility.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TAppBar({
    super.key,
    this.title,
    this.actions,
    this.leadingIcon,
    this.showBackArrow = true,
    this.leadingOnPressed,

  });
final Widget? title;
final bool showBackArrow;
final List<Widget>? actions;
final IconData? leadingIcon;
final VoidCallback? leadingOnPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.md),
      child: AppBar(
        leading:showBackArrow?
        IconButton(onPressed:()=> Get.back(), icon: const Icon(Iconsax.arrow_left))
       : leadingIcon != null? IconButton(onPressed:leadingOnPressed, icon: Icon(leadingIcon)):null,
        title: title,
        actions: actions,

    ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(DeviceUtils.getAppBarHeight());
}


import 'package:flutter/material.dart';

import '../../../utils/constant/sizes.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    super.key,
    this.width ,
    this.hieght ,
    required this.image,
    this.applyRadius = false,
    this.border,
    this.fit = BoxFit.contain,
    this.onPressed,
    this.raduis = Sizes.md,
    this.child,
  });
  final double? width, hieght;
  final double raduis ;
  final Widget? child;
  final String image;
  final bool applyRadius;
  final BoxBorder? border ;
  final BoxFit? fit;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          border: border,
          borderRadius: BorderRadius.circular(raduis),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(raduis),
          child:  Image(
            image:  AssetImage(image),
            fit: fit,
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class RoundedContanier extends StatelessWidget {
  const RoundedContanier(
      {super.key,
      this.width,
      this.height,
      required this.radius,
      this.child,
      required this.image,
      this.backgroundColor,
       this.showBorder = true,
      this.padding,
      this.margin
      });

  final double? width, height;
  final double radius;
  final Widget? child;
  final String image;
  final Color? backgroundColor;
  final bool showBorder;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder? Border.all(color: Colors.white):null,
      ),
      child: child,
    );
  }
}

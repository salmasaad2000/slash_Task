

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:slash_task/commons/widgets/images/rounded_container.dart';
import 'package:slash_task/utils/constant/sizes.dart';

import '../images/rounded_image.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({
    super.key,
    required this.image,
    required this.price,
    required this.productName});

final String image;
final double price;
final String productName;


  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 180,
      height: 200,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
      ),
      child: Column(
        children: [
          RoundedContanier(
              height: 180,
              padding:  EdgeInsets.all(Sizes.sm),
              image:image,
              radius: 5,
              child: Stack(
                children: [
                  RoundedImage(image: image)
                ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.white,
            ),
            child: IconButton(
                onPressed: (){} ,
                icon: Icon(Iconsax.heart5)),

          )
        ],
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:slash_task/commons/widgets/appbar/appbar.dart';
import 'package:slash_task/utils/constant/sizes.dart';
import '../../../../../commons/widgets/products_card/notification_icon.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: const Text('Slash.'),

      actions: [
        Row(
          children: [
            const Icon( Iconsax.location),
            SizedBox(width: 5,),
            const Column(
              children: [
                Text("City", style: TextStyle(fontSize: 12),),
                Text("Government", style: TextStyle(fontSize: 16, fontWeight:FontWeight.bold ),),

              ],
            ),
            IconButton(
                onPressed: (){},
                icon: const Icon(Iconsax.arrow_down))


          ],
        ),
        const SizedBox(width: Sizes.spaceBtwSections,),
        NoteficationIcon(
          onPressed: (){},
          iconColor: Colors.black,
        ),

      ],
    );
  }
}
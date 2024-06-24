import 'package:flutter/material.dart';
import 'package:slash_task/commons/widgets/appbar/appbar.dart';
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
        NoteficationIcon(
          onPressed: (){},
          iconColor: Colors.black,
        )
      ],
    );
  }
}
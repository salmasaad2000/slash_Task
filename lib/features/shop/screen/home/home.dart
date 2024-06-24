import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:slash_task/commons/widgets/customer_shaps/containers/search_container.dart';
import 'package:slash_task/commons/widgets/customer_shaps/curved_edges/curved_edges.dart';
import 'package:slash_task/commons/widgets/text/sectionHadding.dart';
import 'package:slash_task/features/shop/screen/home/widgets/home_appbar.dart';
import 'package:slash_task/utils/constant/color.dart';
import 'package:slash_task/utils/constant/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          const HomeAppBar(),
          const SizedBox(height: Sizes.spaceBtwSections),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 5,
              ),
              const SearchContainer(
                text: 'Search in here',
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Iconsax.setting_4,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: Sizes.defaultSpace),
            child: Column(
              children: [
                const SecationHead(sectionText: 'Categories'),
                const SizedBox(height: Sizes.spaceBtwItems),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 6,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      return  categoriesIcon(
                        image: 'assets/images/new1.png',
                        title: ' ',
                        onTop: (){},
                      );
                    },
                  ),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: Sizes.defaultSpace),
            child: Column(
              children: [
                SecationHead(sectionText: 'Best Selling'),
                SizedBox(height: Sizes.spaceBtwItems),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: Sizes.defaultSpace),
            child: Column(
              children: [
                SecationHead(sectionText: 'New Arival'),
                SizedBox(height: Sizes.spaceBtwItems),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: Sizes.defaultSpace),
            child: Column(
              children: [
                SecationHead(sectionText: 'Recommended for you'),
                SizedBox(height: Sizes.spaceBtwItems),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class categoriesIcon extends StatelessWidget {
  const categoriesIcon({
    super.key,
    required this.image,
    required this.title,
    this.onTop,
  });

  final String image , title;
  final void Function()? onTop;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTop,
      child: Padding(
        padding: const EdgeInsets.only(right: Sizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(Sizes.sm),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(100)),
              child:  Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: Sizes.spaceBtwItems / 2,
            ),
            SizedBox(
                width: 55,
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.labelMedium!.apply(color: Colors.black),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ))
          ],
        ),
      ),
    );
  }
}

class CurvedEdgeWidget extends StatelessWidget {
  const CurvedEdgeWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurvedEdge(),
      child: Container(
          color: TColors.primaryColor,
          padding: const EdgeInsets.all(0),
          child: const SizedBox(
            height: 400,
          )),
    );
  }
}

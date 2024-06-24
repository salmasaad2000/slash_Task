import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:slash_task/commons/widgets/customer_shaps/containers/search_container.dart';
import 'package:slash_task/commons/widgets/customer_shaps/curved_edges/curved_edges.dart';
import 'package:slash_task/commons/widgets/products_card/product_card.dart';
import 'package:slash_task/commons/widgets/text/sectionHadding.dart';
import 'package:slash_task/features/shop/screen/home/widgets/home_appbar.dart';
import 'package:slash_task/utils/constant/color.dart';
import 'package:slash_task/utils/constant/sizes.dart';

import '../../model/categoties_model.dart';
import '../../model/prodect_model.dart';

List<CategoriesModel> categories = [
  CategoriesModel(
      name: 'Fashion', id: 1, image: 'assets/images/categories/new1.png'),
  CategoriesModel(
      name: 'Games', id: 2, image: 'assets/images/categories/new2.png'),
  CategoriesModel(
      name: 'Accessories', id: 3, image: 'assets/images/categories/new3.png'),
  CategoriesModel(
      name: 'Books', id: 4, image: 'assets/images/categories/new4.png'),
  CategoriesModel(
      name: 'Art', id: 5, image: 'assets/images/categories/new5.png'),
];
List<ProdectModel> BestSelling = [
  ProdectModel(
      id: 1,
      name: "Best Seller 1",
      price: 29.99,
      image: "assets/images/products/product1.jpg"),
  ProdectModel(
      id: 2,
      name: "Best Seller 2",
      price: 49.99,
      image: "assets/images/products/product2.jpg"),
  ProdectModel(
      id: 3,
      name: "Best Seller 3",
      price: 19.99,
      image: "assets/images/products/product3.jpg"),
  ProdectModel(
    id: 4,
    name: "Best Seller 4",
    price: 39.99,
    image: "assets/images/products/product4.jpg",
  ),
  ProdectModel(
      id: 5,
      name: "Best Seller 5",
      price: 24.99,
      image: "assets/images/products/product5.jpg"),
];
List<ProdectModel> NewArrival = [
  ProdectModel(
      id: 1,
      name: "New Arrival  1",
      price: 29.99,
      image: "assets/images/products/product2.jpg"),
  ProdectModel(
      id: 2,
      name: "New Arrival 2",
      price: 49.99,
      image: "assets/images/products/product4.jpg"),
  ProdectModel(
      id: 3,
      name: "New Arrival  3",
      price: 19.99,
      image: "assets/images/products/product3.jpg"),
  ProdectModel(
    id: 4,
    name: "New Arrival  4",
    price: 39.99,
    image: "assets/images/products/product1.jpg",
  ),
  ProdectModel(
      id: 5,
      name: "New Arrival  5",
      price: 24.99,
      image: "assets/images/products/product5.jpg"),
];
List<ProdectModel> RecommendedForYou = [
  ProdectModel(
      id: 1,
      name: "Recommended 1",
      price: 29.99,
      image: "assets/images/products/product5.jpg"),
  ProdectModel(
      id: 2,
      name: "Recommended 2",
      price: 49.99,
      image: "assets/images/products/product3.jpg"),
  ProdectModel(
      id: 3,
      name: "Recommended 3",
      price: 19.99,
      image: "assets/images/products/product4.jpg"),
  ProdectModel(
    id: 4,
    name: "Recommended 4",
    price: 39.99,
    image: "assets/images/products/product1.jpg",
  ),
  ProdectModel(
      id: 5,
      name: "Recommended 5",
      price: 24.99,
      image: "assets/images/products/product2.jpg"),
];

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
          const Padding(
            padding: EdgeInsets.all(Sizes.defaultSpace),
            child: RoundedImage(),
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
                    itemCount: categories.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      final category = categories[index];
                      return categoriesIcon(
                        image: category.image,
                        title: category.name,
                        onTop: () {},
                      );
                    },
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: Sizes.defaultSpace),
            child: Column(
              children: [
                const SecationHead(sectionText: 'Best Selling'),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: BestSelling.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      final bestselling = BestSelling[index];
                      return const ProductCardVertical();
                    },
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: Sizes.defaultSpace),
            child: Column(
              children: [
                const SecationHead(sectionText: 'New Arival'),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: NewArrival.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      final newArrival = NewArrival[index];
                      return const ProductCardVertical();
                    },
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: Sizes.defaultSpace),
            child: Column(
              children: [
                const SecationHead(sectionText: 'Recommended for you'),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: RecommendedForYou.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      final recommendedForYou = RecommendedForYou[index];
                      return const ProductCardVertical();
                    },
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    super.key,
    this.width,
    this.hieght,
    required this.image,
    required this.applyRadius,
    this.border,
    this.fit,
    this.onPressed,
  });
  final double? width, hieght;
  final String image;
  final bool applyRadius;
  final BoxBorder? border;
  final BoxFit? fit;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Sizes.md),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(Sizes.md),
        child: const Image(
          image: AssetImage(
            'assets/images/products/product4.png',
          ),
          fit: BoxFit.contain,
        ),
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

  final String image, title;
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
              child: Center(
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
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .apply(color: Colors.black),
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

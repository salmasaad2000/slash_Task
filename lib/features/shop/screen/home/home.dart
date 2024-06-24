import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:slash_task/commons/widgets/customer_shaps/containers/search_container.dart';
import 'package:slash_task/commons/widgets/customer_shaps/curved_edges/curved_edges.dart';
import 'package:slash_task/commons/widgets/images/rounded_image.dart';
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

List<ProdectModel> bestSelling = [
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

List<ProdectModel> newArrival = [
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

List<ProdectModel> recommendedForYou = [
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
        child: Column(
            children: [
          const HomeAppBar(),
          const SizedBox(height: Sizes.spaceBtwSections),
          // Search Bar
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
           // panel
           Padding(
            padding: const EdgeInsets.all(Sizes.defaultSpace),
            child: CarouselSlider(
                options: CarouselOptions(
                  viewportFraction: 1,
                ),
              items: const [
                 RoundedImage(image: 'assets/images/products/product1.jpg'),
                RoundedImage(image: 'assets/images/products/product4.jpg'),
                RoundedImage(image: 'assets/images/products/product2.jpg'),
              ],
            ),

          ),
          const SizedBox(height: Sizes.spaceBtwSections,),
          // Categories
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
                      return CategoriesIcon(
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
          const SizedBox(height: Sizes.spaceBtwSections,),
          // Best Selling
          Padding(
            padding: const EdgeInsets.only(left: Sizes.defaultSpace),
            child: Column(
              children: [
                const SecationHead(sectionText: 'Best Selling'),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: bestSelling.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      final best_Selling = bestSelling[index];
                      return  ProductCardVertical(
                        productName:best_Selling.name,
                        image:best_Selling.image ,
                        price: best_Selling.price,

                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: Sizes.spaceBtwSections,),
          //New Arrival
          Padding(
            padding: const EdgeInsets.only(left: Sizes.defaultSpace),
            child: Column(
              children: [
                const SecationHead(sectionText: 'New Arival'),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: newArrival.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      final new_Arrival = newArrival[index];
                      return  ProductCardVertical(
                        productName:new_Arrival.name,
                        image:new_Arrival.image ,
                        price: new_Arrival.price,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: Sizes.spaceBtwSections,),
          // Recommended for you
          Padding(
            padding: const EdgeInsets.only(left: Sizes.defaultSpace),
            child: Column(
              children: [
                const SecationHead(sectionText: 'Recommended for you'),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: recommendedForYou.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      final recommended_For_You = recommendedForYou[index];
                      return  ProductCardVertical(
                        productName:recommended_For_You.name,
                        image:recommended_For_You.image ,
                        price: recommended_For_You.price,
                      );
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



class CategoriesIcon extends StatelessWidget {
  const CategoriesIcon({
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

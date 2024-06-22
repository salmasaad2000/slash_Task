import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:slash_task/features/shop/screen/home/home.dart';

class NavigationBottom extends StatelessWidget {
  const NavigationBottom({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
            ()=> NavigationBar(
              height: 80,
              elevation: 0,
              selectedIndex: controller.selectedIndex.value,
              onDestinationSelected: (index)=> controller.selectedIndex.value = index  ,
              destinations: const [
                NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
                NavigationDestination(icon: Icon(Iconsax.heart), label: 'Favorites'),
                NavigationDestination(icon: Icon(Iconsax.shopping_cart), label: 'My Card'),
                NavigationDestination(icon: Icon(Iconsax.profile_circle), label: 'Profile'),
              ],
        ),
      ),
      body:Obx(()=>
         controller.screens[
          controller.selectedIndex.value
        ],
      ) ,
    );
  }
}

class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    const HomeScreen(),
    Container(color: Colors.green,),
    Container(color: Colors.yellow,),
    Container(color: Colors.black,),
  ];
}
import 'package:flutter/material.dart';
import '../components/app_bar_component.dart';
import '../components/category_component.dart';
import '../components/product_card.dart';
import '../components/bottom_nav_bar_component.dart';
import 'product_details.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> product_name = ["Green Nike Air Shoes", "Black Nike Air Shoes", "Red Nike Air Shoes", "Blue Nike Air Shoes", "Yellow Nike Air Shoes", "White Nike Air Shoes", "Orange Nike Air Shoes", "Purple Nike Air Shoes", "Pink Nike Air Shoes", "Brown Nike Air Shoes"];

    return Scaffold(
      appBar: const AppBarComponent(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CategoryComponent(),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Popular Products", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                TextButton(
                  onPressed: () {},
                  child: const Text("View all", style: TextStyle(color: Colors.orange)),
                ),
              ],
            ),
            const SizedBox(height: 10),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: product_name.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
          
              itemBuilder: (context, index) {
                return ProductCard(
                  image: 'assets/images/nikeshoe.png',
                  name: product_name[index],
                  price: 250.0,
                  rating: 2.9,
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBarComponent(),
    );
  }
}

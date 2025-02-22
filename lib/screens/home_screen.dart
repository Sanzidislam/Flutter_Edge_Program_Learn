import 'package:flutter/material.dart';
import '../components/app_bar_component.dart';
import '../components/category_component.dart';
import '../components/product_card.dart';
import '../components/bottom_nav_bar_component.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              itemCount: 10,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return const ProductCard(
                  image: 'assets/images/image.png',
                  name: 'Green Nike Air Shoes',
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

import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String name;
  final double price;
  final double rating;

  const ProductCard({
    super.key,
    required this.image,
    required this.name,
    required this.price,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(color: Colors.grey.withOpacity(0.2), blurRadius: 5, spreadRadius: 1),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.asset(image, fit: BoxFit.cover),
          ),
          const SizedBox(height: 10),
          Text(name, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          Row(
            children: [
              const Icon(Icons.star, color: Colors.amber, size: 16),
              Text("$rating", style: const TextStyle(fontSize: 14)),
            ],
          ),
          Text("\$$price", style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.orange)),
          Align(
            alignment: Alignment.bottomRight,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add, color: Colors.white),
              style: IconButton.styleFrom(
                backgroundColor: Colors.black,
                shape: const CircleBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

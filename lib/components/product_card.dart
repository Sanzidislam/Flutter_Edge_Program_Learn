import 'package:flutter/material.dart';
import '../screens/product_details.dart';
class ProductCard extends StatefulWidget {
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
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isAdded = false;

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
            child: GestureDetector(
              onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) => ProductDetails(
                  image: widget.image,
                  name: widget.name,
                  price: widget.price,
                  rating: widget.rating,
                ),

          
                ),
              );
              },
              child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(widget.image, fit: BoxFit.cover, width: double.infinity),
              ),
            ),
            ),
          const SizedBox(height: 10),
          Text(widget.name, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Row(
            children: [
              const Icon(Icons.star, color: Colors.amber, size: 16),
              const SizedBox(width: 4),
              Text("${widget.rating}", style: const TextStyle(fontSize: 14)),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, // Ensures price is on left and button on right
            children: [
              Text(
                "\$${widget.price}",
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.orange),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    isAdded = !isAdded;
                  });
                },
                icon: Icon(isAdded ? Icons.check : Icons.add, color: Colors.white),
                style: IconButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: const CircleBorder(),

                ),
                ),
              
            ],
          ),
        ],
      ),
    );
  }
}

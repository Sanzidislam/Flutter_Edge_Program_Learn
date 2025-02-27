import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final String image;
  final String name;
  final double price;
  final double rating;

  const ProductDetails({
    super.key,
    required this.image,
    required this.name,
    required this.price,
    required this.rating,
  });
  // recieve data from product card

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8),
            child: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 235, 235, 235),
              child: Icon(Icons.favorite_border, color: Colors.black),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          // Product Image
          SizedBox(
            height: 200,
            child: Image.asset('assets/images/nikeshoe.png', fit: BoxFit.cover),
          ),
          // Product Details
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Rating and Share Icon
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                    children: const [
                      Icon(Icons.star, color: Colors.amber, size: 18),
                      SizedBox(width: 4),
                      Text("4.3 (134)", style: TextStyle(fontSize: 14)),
                    ],
                    ),
                    const Icon(Icons.share),
                  ],
                  ),
                  const SizedBox(height: 8),
                  // Discount and Price
                  Row(
                  children: [
                    Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Text(
                      "25%",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    ),
                    const SizedBox(width: 8),
                    const Text(
                    "\$100",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.lineThrough,
                      color: Color.fromARGB(255, 3, 3, 3),
                    ),
                    ),
                      const SizedBox(width: 8),
                      const Text(
                        "\$85.0",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  // Product Name
                  const Text(
                    "Green Nike Air Shoes",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 8),
                  // Stock Status
                  const Row(
                    children: [
                      Text("Status: ", style: TextStyle(fontSize: 14, color: Colors.grey)),
                      Text("In Stock", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(height: 15),
                  // Description
                  const Text(
                    "Description",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look ev... Show more",
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
          // Bottom Bar: Quantity Selector & Add to Cart
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: const BoxDecoration(
              
              color: Color.fromARGB(255, 234, 234, 234),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), 
                topRight: Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Row(
                  children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.remove_circle, color: Colors.grey),
                  ),
                  const Text("5", style: TextStyle(fontSize: 16)),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add_circle, color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  ),
                  onPressed: () {},
                  child: const Text("Add to Cart", style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

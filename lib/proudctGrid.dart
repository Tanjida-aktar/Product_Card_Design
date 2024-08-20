
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/productCard.dart';

import 'main.dart';

class ProductGrid extends StatelessWidget {
  final List<Product> products = [
    Product(name: "Camera", price: 1000, icon: Icons.star, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlndpwDalSNF8TzBG6T7kGv73l0IOReNJpKw&s"),
    Product(name: "Watch", price: 200, icon: Icons.favorite, image: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D"),
    Product(name: "Cosmetic", price: 700, icon: Icons.thumb_up, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_pBX6pBK4Ee9E1XTb0DPYGcKF2OxNrid9sg&s"),
    Product(name: "Face Cream", price: 300, icon: Icons.shopping_cart, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFFPK3rYDA-kYUi9DwIedFbLnA5qmv9ry-IA&s"),
    Product(name: "Medicine", price: 400, icon: Icons.star_border, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKV7iJjMRvjUo6kYgNKc6CZ0LQv4k0LtYnDw&s"),
    Product(name: "Sun Glasses", price: 600, icon: Icons.lightbulb, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHTSbD3EVLf3-ZESsX9YbUIknHrUKG2jc8sA&s"),
    Product(name: "Iphone", price: 100000, icon: Icons.access_alarm, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTViz6PmAb_BABX3n8momY87YM_V1Tv_F_N5w&s"),
    Product(name: "Head Phone", price:2000, icon: Icons.cake, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmPXfeDt5hJmrEqteqyEK7xxJLaBb9CvmoHg&s"),
    Product(name: "Laptop", price: 600000, icon: Icons.camera_alt, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlygWcz51gyDexlstejSgZZ2LSxqF4rBz3wQ&s"),
    Product(name: "tab", price: 10000, icon: Icons.cloud, image: "https://cdn.pixabay.com/photo/2019/03/19/17/55/tab-4066426_640.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 5.0,
        childAspectRatio: 2 / 3,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(8.0), // Margin around the container
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade100), // Border around the container
            borderRadius: BorderRadius.circular(12.0), // Rounded corners
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 5.0,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: ProductCard(product: products[index]),
        );
      },
    );
  }
}
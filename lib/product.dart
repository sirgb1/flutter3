import 'package:flutter/material.dart';

class Product {
  final String name;
  final String imageUrl;
  final double price;
  final String description;

  Product({required this.name, required this.imageUrl, required this.price, required this.description});
}

List<Product> products = [
  Product(name: "Air sucker", imageUrl: 'assets/air_sucker.jpeg', price: 500, description: 'Just an average house air sucker'),
  Product(name: 'Plastic bag', imageUrl: 'assets/bag.jpeg', price: 10, description: 'A normal plastic bag to store stuff in'),
  Product(name: 'Sports car', imageUrl: 'assets/car.jpeg', price: 500000, description: 'Good car. Fast.'),
  Product(name: 'Monitor', imageUrl: 'assets/display.jpeg', price: 17000, description: 'PC monitor'),
  Product(name: 'Gamepad', imageUrl: 'assets/gamepad.jpeg', price: 1500, description: 'Xbox gamepad'),
  Product(name: 'Headphones', imageUrl: 'assets/headphones.jpeg', price: 5000, description: 'Sony Xiaomi Headphones Pro'),
  Product(name: 'IPhone 15 Pro Max', imageUrl: 'assets/iphone.jpeg', price: 100000, description: 'Most popular overpriced Apple garbage'),
  Product(name: 'Keyboard', imageUrl: 'assets/keyboard.png', price: 6000, description: 'Super Sony Playstation Keyboard Ultra'),
  Product(name: 'Desktop lamp', imageUrl: 'assets/lamp.jpeg', price: 5000, description: 'Just an absolutely normal desktop lamp'),
  Product(name: 'Mouse', imageUrl: 'assets/mouse.jpeg', price: 3000, description: 'Just an average PC mouse'),
  Product(name: 'Shovel', imageUrl: 'assets/shovel.jpeg', price: 2000, description: 'A versatile tool, must be in every house'),
  Product(name: 'System block', imageUrl: 'assets/system_block.jpg', price: 10000, description: 'A PC system block'),
  Product(name: 'Wooden table', imageUrl: 'assets/table.jpeg', price: 6700, description: 'Just an average wooden table'),
  Product(name: 'Tennis racket', imageUrl: 'assets/tennis_racket.jpeg', price: 2400, description: 'Google Tennis Racket X6 Pro'),
  Product(name: 'Washing machine', imageUrl: 'assets/washing_machine.jpeg', price: 15300, description: 'In case you don\'t have a wife'),
];

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Show description popup
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(product.name),
              content: Text(product.description),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Close'),
                ),
              ],
            );
          },
        );
      },
      child: Card(
        child: Column(
          children: [
            Image.asset(
              product.imageUrl,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            ListTile(
              title: Text(product.name),
              subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
            ),
          ],
        ),
      ),
    );
  }
}

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Online store')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductCard(product: products[index]);
        },
      ),
    );
  }
}
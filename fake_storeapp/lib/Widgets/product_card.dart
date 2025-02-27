import 'package:flutter/material.dart';

import '../Views/product_detail_screen.dart';
import '../models/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductDetailScreen(productId: product.id),
            ),
          );
        },
        child: ListTile(
          leading: Image.network(
            product.image,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
          title: Text(product.title),
          // 소숫점 두번쨰 자리 까지 표시
          subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
        ),
      ),
    );
  }
}
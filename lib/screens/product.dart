import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'shop.dart';

class ProductDescriptionPage extends StatelessWidget {
  final Product product;

  ProductDescriptionPage({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Product Details',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  product.imageLocation,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.2,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text(
                    product.name,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.shopping_cart, color: Colors.blue),
                      SizedBox(width: 8),
                      Text(
                        'Available Quantity: ${product.quantity}',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Price: \$${product.price.toStringAsFixed(2)}',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Description:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    product.description,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.store, color: Colors.blue),
                      SizedBox(width: 8),
                      Text(
                        'Seller: ${product.shopName}',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.local_shipping, color: Colors.blue),
                      SizedBox(width: 8),
                      Text(
                        'Shipping Method: ${product.shippingMethod}',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

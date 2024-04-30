import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shops/screens/location.dart';
import 'package:shops/utils/color.dart';
import 'home.dart';
import 'product.dart';

class Product {
  final String name;
  final String imageLocation;
  final double price;
  final int quantity;
  final String description;
  final String shippingMethod;
  final String shopName;

  Product({
    required this.name,
    required this.imageLocation,
    required this.price,
    required this.quantity,
    required this.description,
    required this.shippingMethod,
    required this.shopName,
  });
}

class ProductsPage extends StatelessWidget {
  final Shop shop;

  ProductsPage({required this.shop});

  @override
  Widget build(BuildContext context) {
    List<Product> products = [
      Product(
        name: 'Biscuits Sweet',
        shopName: shop.name,
        imageLocation: 'assets/bis.jpg',
        price: 10.50,
        quantity: 500,
        shippingMethod: "Car",
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
            'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      ),
      Product(
        name: 'Coffee X2',
        shopName: shop.name,
        imageLocation: 'assets/coffee1.jpg',
        price: 20.99,
        quantity: 59,
        shippingMethod: "Car",
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
            'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      ),
      Product(
        name: 'Kukoma',
        shopName: shop.name,
        imageLocation: 'assets/kukoma.jpg',
        price: 20.99,
        quantity: 55,
        shippingMethod: "Car",
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
            'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      ),
      Product(
        name: 'Milk',
        shopName: shop.name,
        imageLocation: 'assets/milk.jpg',
        price: 20.99,
        quantity: 15,
        shippingMethod: "Car",
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
            'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      ),
      Product(
        name: 'Carrot',
        shopName: shop.name,
        imageLocation: 'assets/carrot.jpg',
        price: 10.99,
        shippingMethod: "N/A",
        quantity: 87,
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
            'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      ),
      Product(
        name: 'Coffee',
        shopName: shop.name,
        imageLocation: 'assets/coffee.jpg',
        price: 8.99,
        shippingMethod: "N/A",
        quantity: 6,
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
            'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      ),
      Product(
        name: 'Soya Peices',
        shopName: shop.name,
        imageLocation: 'assets/soya.jpg',
        price: 3.99,
        shippingMethod: "N/A",
        quantity: 10,
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
            'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      ),
      Product(
        name: 'Choc',
        shopName: shop.name,
        imageLocation: 'assets/choc.jpg',
        price: 11.99,
        shippingMethod: "Bus",
        quantity: 22,
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
            'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      ),
      Product(
        name: 'Sauce',
        shopName: shop.name,
        imageLocation: 'assets/tsauce.jpg',
        price: 15.99,
        shippingMethod: "Non",
        quantity: 300,
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
            'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      ),
      Product(
        name: 'Biscuits',
        shopName: shop.name,
        imageLocation: 'assets/bis1.jpg',
        price: 15.99,
        shippingMethod: "Non",
        quantity: 33,
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
            'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      ),
      Product(
        name: 'Bread',
        shopName: shop.name,
        imageLocation: 'assets/bread.jpg',
        price: 152.99,
        shippingMethod: "Not Available",
        quantity: 43,
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
            'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      ),
      // Add more products here as needed
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Search bar
              SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 151, 151, 151)),
                    prefixIcon: Icon(Icons.search,
                        color: const Color.fromARGB(255, 151, 151, 151)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Color.fromARGB(255, 239, 239, 239),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              // Shop image preview
              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), // Add border radius
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 200, 200, 200)
                          .withOpacity(0.5), // Add shadow color
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                            topRight: Radius.circular(15),
                            topLeft: Radius.circular(15),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                            ),
                            child: Image.asset(
                              shop.imageLocation,
                              width: double.infinity,
                              height: 170,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  shop.description,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Location(
                        shop: shop,
                      ), // Navigate to products page with selected shop
                    ),
                  );
                },
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.location_on,
                      color: Colors.blue,
                    ), // Icon placed here
                    SizedBox(width: 8),
                    Text(
                      shop.location,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              // List of products in grid
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio:
                          0.8, // Adjust the aspect ratio as needed
                      crossAxisSpacing: 9,
                      mainAxisSpacing: 9,
                    ),
                    itemCount: products.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductDescriptionPage(
                                product: products[index],
                              ), // Navigate to products page with selected shop
                            ),
                          );
                        },
                        child: Card(
                          color: Color.fromARGB(255, 239, 239, 239),
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                child: Image.asset(
                                  products[index].imageLocation,
                                  width: double.infinity,
                                  height: MediaQuery.of(context).size.height *
                                      0.13, // Reduce the height here
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      products[index].name,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      '\$${products[index].price.toStringAsFixed(2)}',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      'Available Quantity: ${products[index].quantity}',
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 120, 120, 120),
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      products[index].description,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 135, 135, 135),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

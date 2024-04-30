import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/color.dart';
import 'profile.dart';
import 'shop.dart';

class Shop {
  final String name;
  final String imageLocation;
  final String location;
  final String description;

  Shop({
    required this.name,
    required this.imageLocation,
    required this.location,
    required this.description,
  });
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  final List<Shop> shops = [
    Shop(
      name: 'Sana',
      imageLocation: 'assets/sana.jpg',
      location: 'Limbe',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
          'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    ),
    Shop(
      name: 'Shoprite',
      imageLocation: 'assets/spr.jpg',
      location: 'Chichiri',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
          'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    ),
    Shop(
      name: 'Chipiku',
      imageLocation: 'assets/chipikul.jpg',
      location: 'Poly',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
          'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    ),
    Shop(
      name: 'Peoples',
      imageLocation: 'assets/peoples.jpg',
      location: 'Machinjiri',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
          'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    ),
    Shop(
      name: 'Pep',
      imageLocation: 'assets/pep.jpg',
      location: 'Limbe',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
          'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    ),
    Shop(
      name: 'Chipiku',
      imageLocation: 'assets/chipiku.jpg',
      location: 'Chitawira',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
          'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    ),
    Shop(
      name: 'Zebra',
      imageLocation: 'assets/zebra.jpg',
      location: 'Nanthoka',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
          'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    ),
    Shop(
      name: 'ABC',
      imageLocation: 'assets/abc.jpg',
      location: 'Poly',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
          'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    ),
    Shop(
      name: 'DC Express',
      imageLocation: 'assets/dc.jpg',
      location: 'Lilongwe',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
          'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    ),
    Shop(
      name: 'Chipiku',
      imageLocation: 'assets/chipikub.jpg',
      location: 'Lilongwe, Kawale',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
          'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    ),
    // Add more shops here as needed
  ];
  bool _isSearchVisible = false;
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorz.pageBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colorz.pageBackgroundColor,
        automaticallyImplyLeading: false, // Remove the back button
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ProfilePage(), // Navigate to products page with selected shop
                  ),
                );
              },
              child: CircleAvatar(
                backgroundImage: AssetImage(
                    'assets/logo.png'), // Replace with your profile image path
                radius: 20,
              ),
            ),
            SizedBox(width: 30),
            Text(
              "Home",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              setState(() {
                _isSearchVisible = !_isSearchVisible;
              });
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            if (_isSearchVisible)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () {
                        _searchController.clear();
                      },
                    ),
                  ),
                  onChanged: (query) {
                    // Implement search functionality
                    // Filter the list based on the search query
                  },
                ),
              ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: shops.map((shop) {
                  return Card(
                    elevation: 0,
                    margin: EdgeInsets.only(bottom: 0),
                    color: Colors.white,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductsPage(
                                shop:
                                    shop), // Navigate to products page with selected shop
                          ),
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Card(
                          color: Colors.white,
                          elevation: .5,
                          child: Container(
                            color: const Color.fromARGB(255, 247, 246, 246),
                            padding: EdgeInsets.all(8),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    shop.imageLocation,
                                    width: MediaQuery.of(context).size.width *
                                        0.33,
                                    height: MediaQuery.of(context).size.height *
                                        0.15,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(width: 16),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.shopping_bag_outlined,
                                            color: Colors.blue,
                                          ), // Icon placed here
                                          SizedBox(width: 8),
                                          Text(
                                            shop.name,
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 8),
                                      Row(
                                        children: [
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
                                      SizedBox(height: 8),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.info_outline,
                                            color: Colors.blue,
                                          ), // Icon placed here
                                          SizedBox(width: 8),
                                          Flexible(
                                            child: Text(
                                              shop.description,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.normal,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                // Icon(Icons.arrow_forward , color: Colors.blue,),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

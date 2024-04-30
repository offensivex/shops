import 'package:flutter/material.dart';

class Shop {
  final String name;

  Shop({required this.name});
}

class ManageShopPage extends StatelessWidget {
  final List<Shop> shops = [
    Shop(name: 'Chipiku'),
    Shop(name: 'Sana'),
    Shop(name: 'Shoprite'),
    Shop(name: 'Zebra'),
    Shop(name: 'ABC'),
    Shop(name: 'DC Express'),
    Shop(name: 'Peoples'),
    // Add more shops here as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Admin Dashboard',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Card(
                    margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    elevation: 1,
                    child: ListTile(
                      title: Text(
                        'Total Shops',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        '${shops.length}',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    elevation: 1,
                    child: ListTile(
                      title: Text(
                        'Total Sales',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        '\$25000', // Replace with actual total sales amount
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                // Add more cards for additional metrics or insights
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Card(
                    margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    elevation: 1,
                    child: ListTile(
                      title: Text(
                        'Blocked Shops',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        '10',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    elevation: 1,
                    child: ListTile(
                      title: Text(
                        'Pending Applications',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        '30', // Replace with actual total sales amount
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                // Add more cards for additional metrics or insights
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Shop Management',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Name',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Edit/Delete',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: shops.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                    elevation: 1,
                    child: ListTile(
                      title: Text(
                        shops[index].name,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(Icons.edit),
                            color: Colors.blue,
                            onPressed: () {
                              // Handle edit action
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.delete),
                            color: Colors.red,
                            onPressed: () {
                              // Handle delete action
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

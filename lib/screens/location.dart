import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'home.dart';


class Location extends StatelessWidget {
  final Shop shop;

  Location({required this.shop});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop Details',style: TextStyle(
                fontWeight: FontWeight.w700,
                overflow: TextOverflow.ellipsis,
              ),),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 30,),
         Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
           child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                         shop.imageLocation, // Change with your map image path
                        width: 100,
                        height: 200, // Set the height as needed
                        fit: BoxFit.cover,
                      ),
                    ),
         ),
               
            
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text(
                      shop.name,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  
                  SizedBox(height: 10),
                 Text(
                        shop.description,
                        style: TextStyle(fontSize: 16),
                      ),
                  SizedBox(height: 20),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                       "assets/map.jpg", // Change with your map image path
                      width: double.infinity,
                      height: 200, // Set the height as needed
                      fit: BoxFit.cover,
                    ),
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
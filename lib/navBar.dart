// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

class MyNavbar extends StatefulWidget {
  const MyNavbar({super.key});

  @override
  State<MyNavbar> createState() => _MyNavbarState();
}

class _MyNavbarState extends State<MyNavbar> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        height: 100,
        width: 100,
        margin: const EdgeInsets.only(bottom: 10.0),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: const BorderRadius.all(
            Radius.circular(100),
          ),
        ),
        child: Icon(
          Icons.shopping_cart,
          color: Colors.white,
          size: 60,
        ), //icon inside button,
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(), 
        notchMargin: 0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.green,
                size: 32,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.favorite_border_rounded,
                  color: Colors.grey, size: 32),
              onPressed: () {},
            ),
            SizedBox(
              width: 40,
            ),
            IconButton(
              icon: Icon(Icons.bookmark, color: Colors.grey, size: 32),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.menu, color: Colors.grey, size: 32),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

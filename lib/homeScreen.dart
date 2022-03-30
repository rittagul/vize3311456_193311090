import 'dart:math';
import 'package:elbiyafet/HorizontalListView.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:elbiyafet/toolsUtilites.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> imageList = [
    "assets/products/1.png",
    "assets/products/2.png",
    "assets/products/3.png",
    "assets/products/4.png",
    "assets/products/5.png",
    "assets/products/6.png",
    "assets/products/7.png",
  ];
  @override
  Widget build(BuildContext context) {
    Widget ImageCarouselSlider = Container(
      child: CarouselSlider(
        options: CarouselOptions(
          enlargeCenterPage: true,
          enableInfiniteScroll: false,
          autoPlay: true,
          autoPlayAnimationDuration: Duration(milliseconds: 1000),
        ),
        items: imageList
            .map((e) => ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Image.asset(
                        e,
                        width: 800,
                        height: 80,
                        fit: BoxFit.contain,
                      )
                    ],
                  ),
                ))
            .toList(),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        // الاب بار و البوتونات اللي فيه
        backgroundColor: Toolsutilites.mainColor,
        elevation: 0,
        title: Text(" ELBIYAFET ",
            style: TextStyle(
                color: Toolsutilites.whiteColor,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
        actions: <Widget>[
          //البوتونات اللي بالاب بار
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      //القائمة اللي عالطرف اليسلر
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Ritta Gül'),
              accountEmail: Text('rittagul2@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Toolsutilites.greyColor,
                  child: Icon(
                    Icons.person,
                    color: Toolsutilites.whiteColor,
                    size: 40,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Toolsutilites.mainColor),
            ),
            //البوتونات و ايقوناتهن
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  'Home Page',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  'My account',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(Icons.person),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  'My Orders',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(Icons.shopping_basket),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  'Categories',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(Icons.dashboard),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  'Favourites',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(
                  Icons.favorite,
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  'Settings',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(Icons.settings),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  'About',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(
                  Icons.help,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          ImageCarouselSlider,
          Padding(padding: EdgeInsets.all(5),
          child: Text('Categories'),),
          HorizontalList(),
        ],

      ),
    );
  }
}

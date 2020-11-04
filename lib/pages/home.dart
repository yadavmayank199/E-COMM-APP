import 'package:flutter/material.dart';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:ecommerceapp/components/horizonalview.dart';
import 'package:ecommerceapp/components/productview.dart';
import 'package:ecommerceapp/pages/shopingcart.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/b1.jpeg'),
          AssetImage('images/b2.jpeg'),
          AssetImage('images/b3.jpeg'),
          AssetImage('images/b4.jpeg'),
          AssetImage('images/b5.jpeg'),
          AssetImage('images/b6.jpeg'),
          AssetImage('images/b7.jpeg'),
        ],
        autoplay: true,
        dotSize: 4.0,
        dotColor: Colors.white,
        indicatorBgPadding: 2.0,
        dotBgColor: Colors.transparent,
      ),
    );
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('FashionApp'),
        actions: <Widget>[
          new IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              //***************************route to cart************************
              onPressed: () {
                Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context) => new Cart()));
              }
            //***********************************route end******************
          ),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
// header
            new UserAccountsDrawerHeader(
              accountName: Text('MAYANK YADAV'),
              accountEmail: Text('yadavpavi923@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.red,
              ),
            ),
//BODY
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('HOME'),
                leading: Icon(
                  Icons.home,
                  color: Colors.brown,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(
                  Icons.person,
                  color: Colors.green,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Order'),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.black,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context) => new Cart()));
              },
              child: ListTile(
                title: Text('Shoping Cart'),
                leading: Icon(
                  Icons.shopping_cart,
                  color: Colors.pink,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
            ),
            Divider(),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(
                  Icons.help,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
      body: new Column(
        children: <Widget>[
          //images carousel begin here
          //         image_carousel,
          //padding widget
          new Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
                alignment: Alignment.centerLeft, child: new Text('Categories')),
          ),

          //horizontal list view begin here
          HorizontalList(),

          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                alignment: Alignment.centerLeft,
                child: new Text('Recent Products')),
          ),
          Flexible(
            child: Products(),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Cart_Products extends StatefulWidget {
  @override
  _Cart_ProductsState createState() => _Cart_ProductsState();
}

class _Cart_ProductsState extends State<Cart_Products> {
  var Products_on_the_cart = [
    {
      "name": "Blazer",
      "picture": "images/blazer1.jpg",
      "price": 850,
      "size": "M",
      "color": "Black",
      "quantity": "1",
    },
    {
      "name": "Dress",
      "picture": "images/dress1.jpeg",
      "price": 950,
      "size": "L",
      "color": "Red",
      "quantity": "1",
    },

  ];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: Products_on_the_cart.length,
        itemBuilder: (context, index) {
          return Single_cart_product(
            cart_prod_name: Products_on_the_cart[index]["name"],
            cart_prod_color: Products_on_the_cart[index]["color"],
            cart_prod_qty: Products_on_the_cart[index]["quantity"],
            cart_prod_size: Products_on_the_cart[index]["size"],
            cart_prod_price: Products_on_the_cart[index]["price"],
            cart_prod_picture: Products_on_the_cart[index]["picture"],
          );
        });
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

  Single_cart_product({
    this.cart_prod_name,
    this.cart_prod_picture,
    this.cart_prod_price,
    this.cart_prod_size,
    this.cart_prod_color,
    this.cart_prod_qty,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 6.0, 6.0, 8.0),
        child: ListTile(
// **************************LEADING SECTION*********************
          leading: new Image.asset(
            cart_prod_picture,
            width: 70.0,
            height: 80.0,
          ),
//**************************************TITLE SECTION ***************
          title: new Text(cart_prod_name),
//*********************************SUBTITLE SECTION *********************
          subtitle: new Column(
            children: <Widget>[
//*********************ROW INSIDE THE COLUMN************
              new Row(
                children: <Widget>[
// *********************THIS SECTION IS FOR SIZE OF THE PRODUCT*************
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: new Text("Size:"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: new Text(
                      cart_prod_size,
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
//******************************this section is for product color**************
                  new Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 6.0, 6.0, 8.0),
                    child: new Text("Color:"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: new Text(
                      cart_prod_color,
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              ),

//**********************this section is for product price***********************
              Padding(
                padding: const EdgeInsets.fromLTRB(6.0, 10.0, 6.0, 10.0),
                child: new Container(
                  alignment: Alignment.topLeft,
                  child: new Text(
                    "\RS ${cart_prod_price}",
                    style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
          trailing: Padding(
            // not correct below lines*********************************************************************************
            padding: const EdgeInsets.fromLTRB(6.0, 110.0, 6.0, 222.0),
            child: new Column(
              children: <Widget>[
                new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: () {}),
                new Text("$cart_prod_qty"),
                new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

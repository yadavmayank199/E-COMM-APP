import 'package:ecommerceapp/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ProductDetails extends StatefulWidget {
  final product_details_name;
  final product_details_new_price;
  final product_details_old_price;
  final product_details_picture;

  ProductDetails({
    this.product_details_name,
    this.product_details_new_price,
    this.product_details_old_price,
    this.product_details_picture,
  });
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: InkWell(
            // to click on fashinapp return to home page
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => new MaterialApp()));
            },
            child: new Text('FashionApp')),
        actions: <Widget>[
          new IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
                child: Container(
                  color: Colors.white,
                  child: Image.asset(widget.product_details_picture),
                ),
                footer: new Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: new Text(widget.product_details_name),
                    title: new Row(
                      children: <Widget>[
                        Expanded(
                            child: new Text(
                          "\RS ${widget.product_details_old_price}",
                          style: TextStyle(
                              color: Colors.blueGrey,
                              decoration: TextDecoration.lineThrough),
                        )),
                        Expanded(
                            child: new Text(
                          "\RS ${widget.product_details_new_price}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.red),
                        )),
                      ],
                    ),
                  ),
                )),
          ),
//   ******************************the first button***************************
          Row(
            children: <Widget>[
//        ******************************THE SIZE BUTTON********************8
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("SIZE"),
                            content: new Text("Choose The Size"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  //    to close alert*****************
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("Close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("SIZE")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
//**********************************************THE COLOR BUTTON*****************************8
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("COLOR"),
                            content: new Text("Choose The Color"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  //    to close alert*****************
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("Close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("COLOR")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
//**********************************************QTYBUTTON**************************************
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("QUANTITY"),
                            content: new Text("Choose Quantity"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  //    to close alert*****************
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("Close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("QTY")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                    onPressed: () {},
                    color: Colors.red,
                    textColor: Colors.white,
                    elevation: 0.2,
                    child: new Text("BUY NOW")),
              ),
              new IconButton(
                  icon: Icon(Icons.add_shopping_cart, color: Colors.red),
                  onPressed: () {}),
              new IconButton(
                  icon: Icon(Icons.favorite_border, color: Colors.red),
                  onPressed: () {}),
            ],
          ),

          Divider(),
          new ListTile(
            title: new Text("Product Details"),
            subtitle: new Text(
                "The blazer is an iconic piece of menswear as well as a central piece of any gentleman’s wardrobe. Unfortunately, the definition of a “blazer” has gotten hazier over time. To make sure you’re taking advantage of the blazer’s remarkable versatility, we will define a blazer, discuss its history, modern interpretations of the jacket and elaborate on how to wear it best."),
          ),
          Divider(),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Product Name",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(5.0),
                  child: new Text(widget.product_details_name)),
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Product Brand",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(padding: EdgeInsets.all(5.0), child: new Text("BRAND X")),
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Product Condition",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(padding: EdgeInsets.all(5.0), child: new Text("NEW")),
            ],
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text("Similar Product"),
          ),

// ************************similar product section**********************************************************8
          Container(
            height: 360.0,
            child: Similar_Product(),
          )
        ],
      ),
    );
  }
}

// *******************************************similar product*****************************************
class Similar_Product extends StatefulWidget {
  @override
  _Similar_ProductState createState() => _Similar_ProductState();
}

class _Similar_ProductState extends State<Similar_Product> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/blazer1.jpg",
      "old_price": 1200,
      "price": 850,
    },
    {
      "name": "Dress",
      "picture": "images/dress1.jpeg",
      "old_price": 1230,
      "price": 825,
    },
    {
      "name": "Shirt",
      "picture": "images/shirt1.jpeg",
      "old_price": 1500,
      "price": 480,
    },
    {
      "name": "Shoes",
      "picture": "images/shoes1.jpg",
      "old_price": 1560,
      "price": 898,
    },
    {
      "name": "WomensJacket",
      "picture": "images/jacket2.jpeg",
      "old_price": 1120,
      "price": 185,
    },
    {
      "name": "WomenBlazer",
      "picture": "images/blazer2.jpeg",
      "old_price": 1120,
      "price": 185,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Similar_single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Similar_single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;
  @override
  Similar_single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: new Text(" hero1"),
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => new ProductDetails(
                      //here we are passing value of product deatils
                      product_details_name: prod_name,
                      product_details_new_price: prod_price,
                      product_details_old_price: prod_old_price,
                      product_details_picture: prod_picture,
                    ))),
            child: GridTile(
                footer: Container(
                    color: Colors.white70,
                    child: new Row(
                      children: <Widget>[
                        Expanded(
                            child: new Text(
                          prod_name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                        )),
                        new Text(
                          "\RS  ${prod_price}",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
                child: Image.asset(
                  prod_picture,
                  fit: BoxFit.cover,
                )),
          ),
        ),
      ),
    );
  }
}

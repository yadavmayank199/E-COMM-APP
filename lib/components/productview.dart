import 'package:ecommerceapp/pages/productdetails.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
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
      "name": "Shoes",
      "picture": "images/shoes2.png",
      "old_price": 876,
      "price": 858,
    },
    {
      "name": "Shoes",
      "picture": "images/shoes3.jpeg",
      "old_price": 1120,
      "price": 185,
    },
    {
      "name": "Paints",
      "picture": "images/paints1.jpeg",
      "old_price": 1120,
      "price": 185,
    },

    {
      "name": "MensJacket",
      "picture": "images/jacket1.jpeg",
      "old_price": 1120,
      "price": 185,
    },
    {
      "name": "WomensJacket",
      "picture": "images/jacket2.jpeg",
      "old_price": 1120,
      "price": 185,
    },

    {
      "name": "MenShort",
      "picture": "images/menshort1.jpeg",
      "old_price": 1120,
      "price": 185,
    },

    {
      "name": "MenShort",
      "picture": "images/menshort2.jpeg",
      "old_price": 1120,
      "price": 185,
    },

    {
      "name": "WomenBlazer",
      "picture": "images/blazer2.jpeg",
      "old_price": 1120,
      "price": 185,
    },

    {
      "name": "Cap",
      "picture": "images/cap1.jpg",
      "old_price": 120,
      "price": 67,
    },

    {
      "name": "Cap",
      "picture": "images/cap2.jpg",
      "old_price": 130,
      "price": 87,
    },

    {
      "name": "Cap",
      "picture": "images/cap4.jpg",
      "old_price": 190,
      "price": 98,
    },

    {
      "name": "Hoodie",
      "picture": "images/hoodie1.jpg",
      "old_price": 190,
      "price": 98,
    },

    {
      "name": "Hoodie",
      "picture": "images/hoodie2.jpg",
      "old_price": 160,
      "price": 107,
    },

    {
      "name": "Hoodie",
      "picture": "images/hoodie3.jpg",
      "old_price": 150,
      "price": 111,
    },

    {
      "name": "Shirt",
      "picture": "images/shirt3.jpg",
      "old_price": 187,
      "price": 160,
    },

    {
      "name": "Shirt",
      "picture": "images/shirt4.jpg",
      "old_price": 134,
      "price": 120,
    },

    {
      "name": "Shirt",
      "picture": "images/shirt5.jpg",
      "old_price": 167,
      "price": 120,
    },

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Single_prod(
              prod_name: product_list[index]['name'],
              prod_picture: product_list[index]['picture'],
              prod_old_price: product_list[index]['old_price'],
              prod_price: product_list[index]['price'],
            ),
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;
  @override
  Single_prod({
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
                    children:<Widget>[
                      Expanded(
                          child:new Text(prod_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),)
                      ),
                      new Text("\RS  ${prod_price}",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
                    ],
                  )
                ),
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

import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_loactaion: 'images/Mens-Blazer.png',
            image_caption: 'Blazer',
          ),
          Category(
            image_loactaion: 'images/Mens-Shirt.png',
            image_caption: 'Shirt',
          ),
          Category(
            image_loactaion: 'images/Mens-Short.png',
            image_caption: 'MensShort',
          ),
          Category(
            image_loactaion: 'images/Hat.png',
            image_caption: 'Hat',
          ),
          Category(
            image_loactaion: 'images/Hoodie.png',
            image_caption: 'Hoodie',
          ),
          Category(
            image_loactaion: 'images/Jacket.png',
            image_caption: 'Jacket',
          ),
          Category(
            image_loactaion: 'images/Jeans.png',
            image_caption: 'Jeans',
          ),
          Category(
            image_loactaion: 'images/Womans-Dress.png',
            image_caption: 'Womans-Dress',
          ),
          Category(
            image_loactaion: 'images/Womans-Collared-T-shirt.png',
            image_caption: 'Collared-T-shirt',
          ),
          Category(
            image_loactaion: 'images/Womans-Pant.png',
            image_caption: 'Womans-Pant',
          ),

        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_loactaion;
  final String image_caption;

  Category({
    this.image_loactaion,
    this.image_caption,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 80.0,
          child: ListTile(
            title: Image.asset(
              image_loactaion,
 //             width: 40,
//              height: 40,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                image_caption,
                style: new TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

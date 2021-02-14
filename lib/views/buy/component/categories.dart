import 'package:e_farm/views/buy/component/categorized_product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          OneCategory("images/category/vegitable.png", "Vegitables"),
          OneCategory("images/category/fruits.png", "Fruits"),
          OneCategory("images/category/meat.png", "Animal Products"),
          OneCategory("images/category/diary.png", "Diary Products"),
          OneCategory("images/category/honey.png", "Honey"),
          OneCategory("images/category/grain.jpg", "Grains"),
        ],
      ),
    );
  }
}

class OneCategory extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;

  OneCategory(
    this.imageLocation,
    this.imageCaption,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => CategorizedProducts(imageCaption)));
        },
        child: Container(
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: MediaQuery.of(context).size.width / 8 +5,
                backgroundColor: Colors.white,
                child: ClipOval(
                  child: Image(
                    image: AssetImage(imageLocation),
                    height: MediaQuery.of(context).size.width / 4,
                    width: MediaQuery.of(context).size.width / 4,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Text(
                imageCaption,
                style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:e_farm/views/buy/component/product_card.dart';
import 'package:e_farm/views/buy/component/product_profile.dart';


class CategorizedProducts extends StatelessWidget {

  final String title;

  CategorizedProducts(this.title);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.green[900],
            title: Text(title,style: TextStyle(color: Colors.white,letterSpacing: 2.0),),
          ),
          body: Container(
            color: Colors.white,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: AlwaysScrollableScrollPhysics(),
                itemCount: 15,
                itemBuilder: (context,index){
                  return InkWell(
                      onTap: (){
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) => ProductProfile()));
                      },
                      child: ProductCard("Wadduwa","images/category/vegitable.png","LKR 1000 per 1 btl","Bee Honey")
                  );
                }
            ),
          ),
        )
    );
  }
}





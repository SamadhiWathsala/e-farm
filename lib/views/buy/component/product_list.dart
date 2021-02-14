import 'package:flutter/material.dart';

import 'package:e_farm/views/buy/component/product_card.dart';
import 'package:e_farm/views/buy/component/product_profile.dart';


class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 12,
        itemBuilder: (context,index){
          return InkWell(
              onTap: (){
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => ProductProfile()));
              },
              child: ProductCard("Wadduwa","images/category/vegitable.png","LKR 1000 per 1 btl","Bee Honey")
          );
        },
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: AlwaysScrollableScrollPhysics(),
      ),
    );
  }
}

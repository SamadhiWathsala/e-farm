import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {

  final String productName;
  final String picLocation;
  final String area;
  final String price;

  ProductCard(this.area,this.picLocation,this.price,this.productName);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        elevation: 1.0,
        child: Row(
          children: <Widget>[
            Container(
              child: Image(image: AssetImage(picLocation),width: (MediaQuery.of(context).size.width)/2.5,height: (MediaQuery.of(context).size.width)/2.5,fit: BoxFit.fill,),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 3.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(productName,overflow: TextOverflow.ellipsis,softWrap: true,style: TextStyle(fontSize: 20.0),),
                      Text(area,overflow: TextOverflow.ellipsis,softWrap: true,style: TextStyle(fontSize: 15.0)),
                      Text(price,overflow: TextOverflow.ellipsis,softWrap: true,style: TextStyle(fontSize: 15.0)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}












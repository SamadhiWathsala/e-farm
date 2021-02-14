import 'package:e_farm/views/buy/component/categories.dart';
import 'package:e_farm/views/buy/component/product_list.dart';
import 'package:flutter/material.dart';

class BuyExplorer extends StatefulWidget {
  @override
  _BuyExplorerState createState() => _BuyExplorerState();
}

class _BuyExplorerState extends State<BuyExplorer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            onPressed: null,
          )
        ],
        backgroundColor: Colors.green[900],
        title: Text(
          "Farm Shop",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(top: 5),
              height: MediaQuery.of(context).size.width / 2.5,
              child: Categories(),
            ),
            Expanded(child: ProductList()),
          ],
        ),
      ),
    );
  }
}

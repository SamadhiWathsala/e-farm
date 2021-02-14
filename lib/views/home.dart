import 'package:e_farm/views/buy/explore.dart';
import 'package:e_farm/views/sell/explore.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget customTile(Icon pic, String name){
      return Container(
        decoration: BoxDecoration(
            color: Colors.green[900],
            borderRadius: BorderRadius.all(
              Radius.circular(30.0),

            )
        ),

        height: MediaQuery.of(context).size.width/3,
        width: MediaQuery.of(context).size.width/3,
        child: Column(
          children: <Widget>[
            pic,
            Text(name,style: TextStyle(color: Colors.white),)
          ],
        ),
      );
    }


    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: <Widget>[
          IconButton(icon: Icon(Icons.person,color: Colors.green[900],), onPressed: null,),
          IconButton(icon: Icon(Icons.more_vert,color: Colors.green[900],), onPressed: null,)
        ],
        backgroundColor: Colors.white,
        elevation: 0.0,
//        title: Text("Farm Shop", style: TextStyle(color: Colors.white),),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.height/12,
                backgroundColor: Colors.green[900],
                child: CircleAvatar(
                  radius: MediaQuery.of(context).size.height/12-5,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage("images/splash.jpg"),
                ),
              ),
            ),
            Column(
//              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(text: TextSpan(
                      children: [
                        TextSpan(text: "Hi ",style:TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.black)),
                        TextSpan( text: 'user', style:TextStyle(fontSize: 25,color: Colors.black,)),
                      ]
                  )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Welcome Back",style: TextStyle(fontSize: 25.0,color: Colors.black)),
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Buy or Sell fresh product"),
            ),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height/2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    InkWell(
                      child: customTile(Icon(Icons.add_shopping_cart,color: Colors.white,size: MediaQuery.of(context).size.width/4,),"BUY"),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>BuyExplorer()));
                      },
                    ),
                    InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SellExplorer()));
                        },
                        child: customTile(Icon(Icons.near_me,color: Colors.white,size: MediaQuery.of(context).size.width/4,),"SELL")
                    ),
                  ],),
              ),
            )
          ],
        ),
      ),
    );
  }
}

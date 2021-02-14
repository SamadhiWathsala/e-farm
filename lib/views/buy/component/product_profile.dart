import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: <Widget>[
              Container(
                child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage("images/category/fruits.png"),
                  height: MediaQuery.of(context).size.height / 4 -1,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              RotationTransition(
                turns: AlwaysStoppedAnimation(180 / 360),
                child: ClipPath(
                  child: Container(
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height / 4,
                    width: MediaQuery.of(context).size.width,
                  ),
                  clipper: MyClipper(),
                ),
              ),
              Container(
                color: Colors.white54,
                height: MediaQuery.of(context).size.height/4,
                child: Center(child: Text("Product Name",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),)),
              ),
              Column(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height/4,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Expanded(
                    child: Scaffold(
                        backgroundColor: Colors.white,
                        body: ListView(
                          scrollDirection: Axis.vertical,
                          children: <Widget>[
                            Text("Price List",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,letterSpacing: 2.0),),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Table(
                                border: TableBorder.all(),
                                children: [
                                  TableRow( children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text('ප්‍රමාණය'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text('මිල (LKR)'),
                                    ),
                                  ]),
                                  TableRow( children: [
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text("500g"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text("60"),
                                    )
                                  ]),
                                  TableRow( children: [
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text("1Kg"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text("100"),
                                    )
                                  ]),
                                  TableRow( children: [
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text("5Kg"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text("485"),
                                    )
                                  ]),
                                  TableRow( children: [
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text("10Kg"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text("950"),
                                    )
                                  ]),
                                ],
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text("Available quantity",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,letterSpacing: 2.0),),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("10kg"),
                            ),
                            SizedBox(height: 10,),
                            Text("Delivery fees",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,letterSpacing: 2.0),),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("1 කිලෝමීටරයකට රු 30"),
                            ),
                            SizedBox(height: 10,),
                            Text("Deliver Service Areas",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,letterSpacing: 2.0),),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("කළුතර, පානදුර, වාද්දුව, හොරණ, කොළඹ"),
                            ),
                            SizedBox(height: 10,),
                            Text("Contact Info",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,letterSpacing: 2.0),),
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(right: 5.0),
                                      child: Icon(Icons.phone_in_talk),
                                    ),
                                    Text("+94721306125",overflow: TextOverflow.fade,),
                                  ],
                                )
                            ),
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(right: 5.0),
                                      child: Icon(Icons.location_on),
                                    ),
                                    Expanded(child: Text("54/ඒ, උඩ යට කණපිට මාවත, ගල් කැටිත්ත, මහා ඉරුන්දාව මාවත, මඩ ගොඩ වත්ත, ගල් අමුණ, ජා ඇල, ගම්පහ, ශ්‍රී ලංකාව.",overflow: TextOverflow.fade,)),
                                  ],
                                )
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("EMAIL : geevindaefarm@gmail.com"),
                            ),

                          ],
                        ),
                        bottomNavigationBar: Padding(padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: (){
//                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.green[800],
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(60.0),
                                    topRight: Radius.circular(60.0)
                                ),
                                // gradient: Gradient(colors: [Colors.blue,Colors.grey])
                              ),
                              height: MediaQuery.of(context).size.width/10,
                              child: Center(
                                child: RichText(maxLines: 2,
                                  text: TextSpan(
                                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 15.0 ),
                                      children: [
                                        TextSpan(
                                            text: "Place your order",
                                            style: TextStyle(color: Colors.white)
                                        ),
                                        TextSpan(
                                            text: " NOW!",
                                            style: TextStyle(color: Colors.redAccent)
                                        )
                                      ]
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                    ),
                  )
                ],
              )
            ],
          ),
        )
    );
  }
}


class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size){

    var path = Path();
    path.lineTo(0.0, size.height/1/4);

    var firstControlPoint = Offset(size.width/6, size.height/8);
    var firstEndPoint = Offset(size.width/2, size.height/4);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint = Offset(size.width/2 + size.width/4, size.height/3);
    var secondEndPoint = Offset(size.width, 0.0);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);


    path.lineTo(size.width, 0.0);
    path.close();
    return path;

  }

  @override
  bool shouldReclip(CustomClipper<Path> olderClipper) => false ;
}



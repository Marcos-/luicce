import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  static String id = "product_screen";
  @override
  _ProductScreenState createState() => new _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {

  @override
  Widget build(BuildContext context) {

    MediaQueryData deviceInfo = MediaQuery.of(context);
    
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black54),
        leading: null,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                Navigator.pop(context);
              }),
        ],
        title: null,
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset("assets/image_01.png",
                height: deviceInfo.size.height / 2,
                width: deviceInfo.size.width,
                fit: BoxFit.cover,
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                "Blazer de linho",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 40.0,
                    fontWeight: FontWeight.w300,
                    fontFamily: "Calibre_Semibold",
                    letterSpacing: 1.0),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                "R\$ 560,00",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w300,
                    fontFamily: "Calibre_Semibold",
                    letterSpacing: 1.0),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 150),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed est mauris, malesuada nec felis at leo.",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w300,
                    fontFamily: "Calibre_Semibold",
                    letterSpacing: 1.0,
                  ),
              ),
            ),
          ]
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: Icon(Icons.message),
        backgroundColor: Colors.white,//Color(0xff639a67),
        foregroundColor: Color(0xff639a67),
        splashColor: Colors.white,
      ),
    );
  }
}
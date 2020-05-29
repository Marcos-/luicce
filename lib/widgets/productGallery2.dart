import 'package:flutter/material.dart';

class ProductGalery2 extends StatelessWidget {
  const ProductGalery2({
    Key key,
    @required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 18.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset("assets/image_02.png",
                width: width/2.3, fit: BoxFit.cover),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 18.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset("assets/image_03.png",
                width: width/2.3, fit: BoxFit.cover),
          ),
        )
      ],
    );
  }
}
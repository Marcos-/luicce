import 'package:luicce/screens/productScreen.dart';
import 'package:flutter/material.dart';

class BulletRow extends StatelessWidget {
  final String bulletTitle;
  const BulletRow({
    Key key,
    this.bulletTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 4.0),
      child: Row(
        children: <Widget>[
          FlatButton(
            onPressed: (){ 
              Navigator.pushNamed(context, ProductScreen.id);
            }, 
            child: Text(bulletTitle,style: TextStyle(color: Colors.white),),
            color: Colors.deepOrangeAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            "5+ histórias",
            style: TextStyle(color: Colors.black87),
          )
        ],
      ),
    );
  }
}

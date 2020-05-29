import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({
    Key key, this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
                color: Colors.black,
                fontSize: 46.0,
                fontFamily: "Calibre_Semibold",
                letterSpacing: 1.0),
          ),
          IconButton(
              icon: Icon(
                Icons.more_horiz,
                size: 40.0,
                color: Colors.black,
              ),
              onPressed: () {})
        ],
      ),
    );
  }
}
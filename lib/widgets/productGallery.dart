import 'package:flutter/material.dart';

class ProductGalery extends StatelessWidget {
  const ProductGalery({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var width = screenSize.width;
    var height = screenSize.height;
    return GridView.count(
        crossAxisCount: 2,
        children: List.generate(4, (index) {
          var i = index + 1;
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset("assets/image_0$i.png", 
                        height: height / 2,
                        width: width,
                        fit: BoxFit.cover,
                  ),
              ),
            ),
          );
        }),
    );
  }
}
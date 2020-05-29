import 'package:luicce/screens/productScreen.dart';
import 'package:luicce/widgets/bulletRow.dart';
import 'package:luicce/widgets/productGallery.dart';
import 'package:luicce/widgets/sectionTitle.dart';
import 'package:luicce/widgets/slider.dart';
import 'package:flutter/material.dart';
import '../data.dart';

class HomeScreen extends StatefulWidget {
  static String id = "home_screen";
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<HomeScreen> {
  var currentPage = images.length - 1.0;
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    
    PageController controller = PageController(initialPage: images.length - 1);
    controller.addListener(() {
      setState(() {
        currentPage = controller.page;
      });
    });

    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepOrangeAccent,
              ),
              child: Text(
                'Luicce',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Cocriação'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Perfil'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        // title: Text('My Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Padding(
            //   padding: const EdgeInsets.only(
            //       left: 12.0, right: 12.0, top: 30.0, bottom: 8.0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: <Widget>[
            //       IconButton(
            //           icon: Icon(
            //             Icons.short_text,
            //             color: Colors.black87,
            //             size: 40.0,
            //           ),
            //           onPressed: () {Scaffold.of(context).openDrawer();}
            //       ),
            //       IconButton(
            //           icon: Icon(
            //             Icons.search,
            //             color: Colors.black,
            //             size: 30.0,
            //           ),
            //           onPressed: () {})
            //     ],
            //   ),
            // ),
            SectionTitle(title: "Trending"),
            BulletRow(bulletTitle: "Ultima coleção"),
            Stack(
              children: <Widget>[
                CardScrollWidget(currentPage),
                Positioned.fill(
                  child: PageView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return Container();
                    },
                    itemCount: images.length,
                    controller: controller,
                    reverse: true,
                  )
                )
              ],
            ),
            SectionTitle(title: "Favoritos"),
            BulletRow(bulletTitle: "Mais recentes"),
            SizedBox(height: 20,),
            AspectRatio(
              aspectRatio: 12.0 / 16.0 *1.2, 
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ProductGalery(),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            title: Text('Cocriação'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text('Fav'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepOrangeAccent,
        onTap: (newIndex) => setState(() => _selectedIndex = newIndex),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'drawer.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 255, 128, 177),
            Color.fromARGB(255, 147, 152, 255)
          ], begin: Alignment.topLeft, end: Alignment.bottomCenter)),
        ),
        title: Text(
          "Gallery",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        // automaticallyImplyLeading: false,
      ),
      drawer: DrawerWidget(),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Row(
              children: [
                Flexible(
                    flex: 1,
                    child: Card(
                      child: Column(
                        children: [
                          Container(
                            color: Colors.white,
                            padding: EdgeInsets.all(3),
                            margin: EdgeInsets.all(5),
                            child: Image.asset('assets/images/japan_1.jpg'),
                          ),
                          Container(
                            // color: Colors.amber,
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                            child: Text(
                              "Halal Food Asociation",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromARGB(255, 147, 152, 255),
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    )),
                Flexible(
                    flex: 1,
                    child: Card(
                      child: Column(
                        children: [
                          Container(
                            color: Colors.white,
                            padding: EdgeInsets.all(3),
                            margin: EdgeInsets.all(5),
                            child: Image.asset('assets/images/japan_2.jpg'),
                          ),
                          Container(
                            // color: Colors.amber,
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                            child: Text(
                              "Takushoku University",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromARGB(255, 255, 128, 177),
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
            Row(
              children: [
                Flexible(
                    flex: 1,
                    child: Card(
                      child: Column(
                        children: [
                          Container(
                            color: Colors.white,
                            padding: EdgeInsets.all(3),
                            margin: EdgeInsets.all(5),
                            child: Image.asset('assets/images/japan_3.jpg'),
                          ),
                          Container(
                            // color: Colors.amber,
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                            child: Text(
                              "Genbaku Doom - Hiroshima",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromARGB(255, 147, 152, 255),
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    )),
                Flexible(
                    flex: 1,
                    child: Card(
                      child: Column(
                        children: [
                          Container(
                            color: Colors.white,
                            padding: EdgeInsets.all(3),
                            margin: EdgeInsets.all(5),
                            child: Image.asset('assets/images/japan_4.jpg'),
                          ),
                          Container(
                            // color: Colors.amber,
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                            child: Text(
                              "Masjid Indonesia - Tokyo",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromARGB(255, 255, 128, 177),
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
            Row(
              children: [
                Flexible(
                    flex: 1,
                    child: Card(
                      child: Column(
                        children: [
                          Container(
                            color: Colors.white,
                            padding: EdgeInsets.all(3),
                            margin: EdgeInsets.all(5),
                            child: Image.asset('assets/images/tokyo_tower.jpg'),
                          ),
                          Container(
                            // color: Colors.amber,
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                            child: Text(
                              "Tokyo Tower Night",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromARGB(255, 147, 152, 255),
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    )),
                Flexible(
                    flex: 1,
                    child: Card(
                      child: Column(
                        children: [
                          Container(
                            color: Colors.white,
                            padding: EdgeInsets.all(3),
                            margin: EdgeInsets.all(5),
                            child:
                                Image.asset('assets/images/tokyo_skytree.jpg'),
                          ),
                          Container(
                            // color: Colors.amber,
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                            child: Text(
                              "Tokyo Sky Tree Night",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromARGB(255, 255, 128, 177),
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
            Row(
              children: [
                Flexible(
                    flex: 1,
                    child: Card(
                      child: Column(
                        children: [
                          Container(
                            color: Colors.white,
                            padding: EdgeInsets.all(3),
                            margin: EdgeInsets.all(5),
                            child: Image.asset('assets/images/japan_5.jpg'),
                          ),
                          Container(
                            // color: Colors.amber,
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                            child: Text(
                              "Hiroshima University - I",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromARGB(255, 147, 152, 255),
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    )),
                Flexible(
                    flex: 1,
                    child: Card(
                      child: Column(
                        children: [
                          Container(
                            color: Colors.white,
                            padding: EdgeInsets.all(3),
                            margin: EdgeInsets.all(5),
                            child: Image.asset('assets/images/japan_6.jpg'),
                          ),
                          Container(
                            // color: Colors.amber,
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                            child: Text(
                              "Hisroshima University - II",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromARGB(255, 255, 128, 177),
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

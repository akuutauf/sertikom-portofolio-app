import 'package:flutter/material.dart';
import 'drawer.dart';

class PortofolioPage extends StatelessWidget {
  const PortofolioPage({Key? key}) : super(key: key);

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
          "Portofolio",
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
                      child: Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(3),
                        margin: EdgeInsets.all(5),
                        child: Image.asset('assets/images/twibon.jpg'),
                      ),
                    )),
                Flexible(
                    flex: 1,
                    child: Card(
                      child: Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(3),
                        margin: EdgeInsets.all(5),
                        child: Image.asset('assets/images/poster.jpg'),
                      ),
                    )),
              ],
            ),
            Row(
              children: [
                Flexible(
                    flex: 1,
                    child: Card(
                      child: Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(3),
                        margin: EdgeInsets.all(5),
                        child: Image.asset('assets/images/poster.jpg'),
                      ),
                    )),
                Flexible(
                    flex: 1,
                    child: Card(
                      child: Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(3),
                        margin: EdgeInsets.all(5),
                        child: Image.asset('assets/images/twibon.jpg'),
                      ),
                    )),
              ],
            ),
            Row(
              children: [
                Flexible(
                    flex: 1,
                    child: Card(
                      child: Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(3),
                        margin: EdgeInsets.all(5),
                        child: Image.asset('assets/images/twibon.jpg'),
                      ),
                    )),
                Flexible(
                    flex: 1,
                    child: Card(
                      child: Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(3),
                        margin: EdgeInsets.all(5),
                        child: Image.asset('assets/images/poster.jpg'),
                      ),
                    )),
              ],
            ),
            Row(
              children: [
                Flexible(
                    flex: 1,
                    child: Card(
                      child: Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(3),
                        margin: EdgeInsets.all(5),
                        child: Image.asset('assets/images/poster.jpg'),
                      ),
                    )),
                Flexible(
                    flex: 1,
                    child: Card(
                      child: Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(3),
                        margin: EdgeInsets.all(5),
                        child: Image.asset('assets/images/twibon.jpg'),
                      ),
                    )),
              ],
            ),
            Row(
              children: [
                Flexible(
                    flex: 1,
                    child: Card(
                      child: Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(3),
                        margin: EdgeInsets.all(5),
                        child: Image.asset('assets/images/twibon.jpg'),
                      ),
                    )),
                Flexible(
                    flex: 1,
                    child: Card(
                      child: Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(3),
                        margin: EdgeInsets.all(5),
                        child: Image.asset('assets/images/poster.jpg'),
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

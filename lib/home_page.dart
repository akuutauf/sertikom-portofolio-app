import 'package:flutter/material.dart';
import 'drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 255, 128, 177),
              Color.fromARGB(255, 147, 152, 255)
            ], begin: Alignment.topLeft, end: Alignment.bottomCenter)),
          ),
          title: Text(
            "PORTOFOLIO APP",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          // automaticallyImplyLeading: false,
        ),
        drawer: DrawerWidget(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 30),
                width: MediaQuery.of(context).size.width * 0.4,
                // height: MediaQuery.of(context).size.height * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/animation');
                  },
                  child: Hero(
                      tag: "image",
                      child: Image.asset("assets/images/poliwangi.png")),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 30),
                child: Text(
                  "Tugas Aplikasi Portofolio - Mobile Programming\nTAUFIK HIDAYAT (362055401019)",
                  textAlign: TextAlign.center,
                ),
              ),
              Hero(
                tag: "error",
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/error');
                  },
                  child: Text('DONT KLICK ME'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

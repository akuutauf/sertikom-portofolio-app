import 'package:flutter/material.dart';
import 'drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 255, 128, 177),
            Color.fromARGB(255, 147, 152, 255)
          ], begin: Alignment.topLeft, end: Alignment.bottomCenter)),
        ),
        title: const Text(
          "PORTOFOLIO APP",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        // automaticallyImplyLeading: false,
      ),
      drawer: const DrawerWidget(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 30),
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
              padding: const EdgeInsets.only(bottom: 30),
              child: const Text(
                "Sertikom Aplikasi Portofolio - Mobile Programming\nTAUFIK HIDAYAT (362055401019)",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              child: Hero(
                tag: "error",
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/error');
                  },
                  child: const Text('DONT KLICK ME'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'drawer.dart';

class AnimationPage extends StatelessWidget {
  const AnimationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back)),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 255, 128, 177),
            Color.fromARGB(255, 147, 152, 255)
          ], begin: Alignment.topLeft, end: Alignment.bottomCenter)),
        ),
        title: const Text(
          "Image",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        // automaticallyImplyLeading: false,
      ),
      drawer: const DrawerWidget(),
      body: Container(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Card(
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                child: Hero(
                    tag: "animation",
                    child: Image.asset('assets/images/poliwangi.png')),
              ),
            ),
          )),
    );
  }
}

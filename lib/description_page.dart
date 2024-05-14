import 'package:flutter/material.dart';
import 'drawer.dart';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({Key? key}) : super(key: key);

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
            "Desription",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
          // automaticallyImplyLeading: false,
        ),
        drawer: const DrawerWidget(),
        body: Container(
            child: ListView(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Container(
                margin: const EdgeInsets.all(15),
                child: const Text(
                  'DESCRIPTION PAGE',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                child: Card(
                  elevation: 3,
                  margin: const EdgeInsets.only(left: 15, right: 15),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 1,
                    padding: const EdgeInsets.all(5),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Informasi Aplikasi  :"),
                          const Divider(),
                          RichText(
                            text: const TextSpan(
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 16.0),
                              children: <TextSpan>[
                                TextSpan(
                                    text:
                                        "Portofolio App adalah aplikasi yang memberikan kemudahan kepada para Job Applicant untuk mempersiapkan kebutuhan ketika sedang melamar pekerjaan. ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500)),
                                TextSpan(
                                    text:
                                        "Aplikasi ini menyediakan layanan Profile CV, Portofolio, Contact dan Lain sebagainya.",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500))
                              ],
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          // const Divider(),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ])));
  }
}

import 'package:flutter/material.dart';
import 'drawer.dart';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({Key? key}) : super(key: key);

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
            "Desription",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
          // automaticallyImplyLeading: false,
        ),
        drawer: DrawerWidget(),
        body: Container(
            child: ListView(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Container(
                margin: EdgeInsets.all(15),
                child: Text(
                  'DESCRIPTION PAGE',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                child: Card(
                  elevation: 3,
                  margin: EdgeInsets.only(left: 15, right: 15),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 1,
                    padding: EdgeInsets.all(5),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Information  :"),
                          Divider(),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 16.0),
                              children: <TextSpan>[
                                new TextSpan(
                                    text:
                                        "Portofolio App adalah aplikasi yang memberikan kemudahan kepada para Job Applicant untuk mempersiapkan kebutuhan ketika sedang melamar pekerjaan.",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500)),
                                new TextSpan(
                                    text:
                                        "Aplikasi ini menyediakan layanan Profile CV, Portofolio, Contact dan Lain sebagainya.",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500))
                              ],
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          Divider(),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ])));
  }
}

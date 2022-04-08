import 'package:flutter/material.dart';
import 'drawer.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

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
            "Setting",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
          // automaticallyImplyLeading: false,
        ),
        drawer: DrawerWidget(),
        body: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Container(
                margin: EdgeInsets.all(15),
                child: Text(
                  'SETTING PAGE',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
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
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Pretium aenean pharetra magna ac placerat vestibulum. Sit amet consectetur adipiscing elit duis tristique sollicitudin nibh sit. Enim diam vulputate ut pharetra sit amet aliquam id. A arcu cursus vitae congue mauris rhoncus aenean vel elit. Erat imperdiet sed euismod nisi porta lorem mollis. Nec nam aliquam sem et tortor. Et netus et malesuada fames. Mauris rhoncus aenean vel elit scelerisque. Sit amet nulla facilisi morbi tempus iaculis. Euismod quis viverra nibh cras pulvinar. Nullam non nisi est sit amet. Nulla facilisi cras fermentum odio. A arcu cursus vitae congue mauris rhoncus. Suspendisse interdum consectetur libero id faucibus nisl tincidunt eget nullam.",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500)),
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

import 'package:flutter/material.dart';
import 'drawer.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

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
          "Profile",
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
              // color: Colors.amber,
              margin: const EdgeInsets.all(15),
              child: const Text(
                'PROFILE PAGE',
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
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Nama Lengkap  : TAUFIK HIDAYAT"),
                        Divider(),
                        Text("Nim : 362055401019"),
                        Divider(),
                        Text("Jenis Kelamin : Pria"),
                        Divider(),
                        Text("Umur : 22"),
                        Divider(),
                        Text("Tempat Lahir  : Banyuwangi, Jawa Timur"),
                        Divider(),
                        Text("Tanggal Lahir : 12 September 2001"),
                        Divider(),
                        Text("Alamat : Dusun Puspan, Desa Kedaleman"),
                        Divider(),
                        Text("Agama : Islam"),
                        Divider(),
                        Text("Email : taufikhdayat09121@gmail.com"),
                        Divider(),
                        Text("Pendidikan Terakhir : D4 - TRPL"),
                        Divider(),
                        Text("Status : Fresh Graduate"),
                        Divider(),
                        Text("Keahlian : Programming Web"),
                        Divider(),
                        Text("No Telepon : 082332743884"),
                        // Divider(),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

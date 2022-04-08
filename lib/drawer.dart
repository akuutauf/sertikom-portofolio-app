import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _drawerHeader(),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 15, bottom: 10),
            child: Text(
              "General Menu",
              style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 147, 152, 255),
                  fontWeight: FontWeight.bold),
            ),
          ),
          _drawerItem(
            icon: Icons.home,
            text: "Home",
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          _drawerItem(
            icon: Icons.person,
            text: "Profile",
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
          _drawerItem(
              icon: Icons.cases_rounded,
              text: "Portofolio",
              onTap: () {
                Navigator.pushNamed(context, '/portofolio');
              }),
          _drawerItem(
              icon: Icons.message_rounded,
              text: "Contact",
              onTap: () {
                Navigator.pushNamed(context, '/contact');
              }),
          Divider(
            height: 25,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20, bottom: 10),
            child: Text(
              "Advanced Menu",
              style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 255, 128, 177),
                  fontWeight: FontWeight.bold),
            ),
          ),
          _drawerItem(
            icon: Icons.description_rounded,
            text: "Description",
            onTap: () {
              Navigator.pushNamed(context, '/description');
            },
          ),
          _drawerItem(
            icon: Icons.settings,
            text: "Setting",
            onTap: () {
              Navigator.pushNamed(context, '/setting');
            },
          ),
          _drawerItem(
            icon: Icons.photo_album,
            text: "Gallery",
            onTap: () {
              Navigator.pushNamed(context, '/gallery');
            },
          )
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(
          image: AssetImage('assets/images/akebi_1.jpg'), fit: BoxFit.cover),
    ),
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/aku_1.jpg"), fit: BoxFit.cover)),
    accountName: Text('Taufik Hidayat'),
    accountEmail: Text('taufikhidayat09121@gmail.com'),
  );
}

Widget _drawerItem(
    {required IconData icon,
    required String text,
    required GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}

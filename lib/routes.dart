import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'drawer.dart';
import 'home_page.dart';
import 'profile_page.dart';
import 'portofolio_page.dart';
import 'contact_page.dart';
import 'setting_page.dart';
import 'gallery_page.dart';
import 'description_page.dart';
import 'animation.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // jika ingin mengirim argument
    // final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomePage());
      case '/profile':
        return MaterialPageRoute(builder: (_) => const ProfilePage());
      case '/portofolio':
        return MaterialPageRoute(builder: (_) => const PortofolioPage());
      case '/contact':
        return MaterialPageRoute(builder: (_) => const ContactPage());
      case '/setting':
        return MaterialPageRoute(builder: (_) => const SettingPage());
      case '/gallery':
        return MaterialPageRoute(builder: (_) => const GalleryPage());
      case '/description':
        return MaterialPageRoute(builder: (_) => const DescriptionPage());
      case '/animation':
        return MaterialPageRoute(builder: (_) => const AnimationPage());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      const imageError = "assets/images/error.svg";

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
            "Page Not Found",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
          // automaticallyImplyLeading: false,
        ),
        drawer: const DrawerWidget(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
              tag: "error",
              child: Container(
                padding: const EdgeInsets.only(bottom: 20),
                child: SvgPicture.asset(
                  imageError,
                  width: 200,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              child: const Text(
                'Oops something went wrong\nThe page you are looknig for maybe have been removed or unavailable',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      );
    });
  }
}

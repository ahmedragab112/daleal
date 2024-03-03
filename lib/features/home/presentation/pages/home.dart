import 'package:daleal/features/home/presentation/widgets/cart_view.dart';
import 'package:daleal/features/home/presentation/widgets/home_view.dart';
import 'package:daleal/features/home/presentation/widgets/profile_view.dart';
import 'package:daleal/features/home/presentation/widgets/search_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> pages = const [
    HomeView(),
    ProfileView(),
    SearchView(),
    CartView(),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[index],
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(18), topLeft: Radius.circular(18)),
          child: BottomNavigationBar(
            onTap: (value) {
              index = value;
              setState(() {});
            },
            currentIndex: index,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  label: 'Home',
                  activeIcon: Icon(Icons.home)),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline),
                  label: 'Profile',
                  activeIcon: Icon(Icons.person)),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: 'Search',
                  activeIcon: Icon(FontAwesomeIcons.magnifyingGlass)),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart_outlined),
                  label: 'Cart',
                  activeIcon: Icon(Icons.shopping_cart)),
            ],
          ),
        ));
  }
}

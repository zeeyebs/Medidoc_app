import 'package:doctor_app/constants.dart';
import 'package:doctor_app/ui/screens/home.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  static const String id = "main page route";
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int bottomNavBarIndex = 0;
  void newIndex(int index) {
    setState(() {
      bottomNavBarIndex = index;
    });
  }

  List<Widget> pageData = [
    const HomeScreen(),
    const HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFFFFFFFF), Color(0xFFFFFFFF)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: Theme(
          data: ThemeData(
            canvasColor: Colors.white,
          ),
          child: BottomNavigationBar(
            elevation: 10,
            type: BottomNavigationBarType.shifting,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: bottomNavBarIndex,
            onTap: newIndex,
            selectedItemColor: primaryColor1,
            unselectedItemColor: primaryTextColor,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.bookmarks), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
            ],
          ),
        ),
        // appBar: appBars.elementAt(bottomNavBarIndex),
        body: IndexedStack(
          index: bottomNavBarIndex,
          children: pageData,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_cubit/view/pages/navpages/search_page.dart';

import '../home_page.dart';
import 'bar_item.dart';
import 'my_page.dart';
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    const HomePage(),
    const BarItemPage(),
    const SearchPage(),
    const MyPage(),
  ];
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: (int index){
          setState(() {
            currentIndex=index;
          });
        },
        currentIndex: currentIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items:const [
          BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.apps),),
          BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.bar_chart_sharp)),
          BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.search)),
          BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}

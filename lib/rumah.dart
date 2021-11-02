import 'package:flutter/material.dart';
import 'package:dashboarddatetimer_dwikimaularahman_19552011180/halaman_satu.dart';
import 'package:dashboarddatetimer_dwikimaularahman_19552011180/halaman_dua.dart';
import 'package:dashboarddatetimer_dwikimaularahman_19552011180/halaman_tiga.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State {
  int _indexsekarang = 0;
  final PageController _pageController = PageController();
  final List<Widget> _children = [HalamanSatu(), HalamanDua(), HalamanTiga()];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _indexsekarang = index;
            });
          },
          children: [HalamanSatu(), HalamanDua(), HalamanTiga()],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _indexsekarang,
        onItemSelected: (index) {
          setState(() {
            _indexsekarang = index;
          });
          _pageController.jumpToPage(index);
        },
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.dashboard),
            title: Text('Dashboard'),
            activeColor: Colors.blueAccent,
            inactiveColor: Colors.blueAccent,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.date_range),
            title: Text('Date'),
            activeColor: Colors.redAccent,
            inactiveColor: Colors.redAccent,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.timer),
            title: Text('Time'),
            activeColor: Colors.greenAccent,
            inactiveColor: Colors.greenAccent,
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _indexsekarang = index;
    });
  }
}

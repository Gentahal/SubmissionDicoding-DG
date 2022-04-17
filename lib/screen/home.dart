

import 'package:flutter/material.dart';
import 'package:negara_g20/data/data_negara.dart';
import 'package:negara_g20/models/models.dart';
import 'package:negara_g20/screen/detail.dart';
import 'package:negara_g20/screen/profile.dart';
import 'package:negara_g20/widget/appBar.dart';
import 'package:negara_g20/widget/row.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedItem = 0;
  int _currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(AppBar().preferredSize.height),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ItemCountry(country: CountryData.listData[index]);
        },
        itemCount: CountryData.listData.length,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        selectedItemColor: Colors.greenAccent,
        onTap: (int value) {
          setState(() {
            _currentTab = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30.0,
              ),
              title: SizedBox.shrink()),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark,
                size: 30.0,
              ),
              title: SizedBox.shrink()),
          BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfilePage()));
                },
                child: CircleAvatar(
                  radius: 15.0,
                  backgroundImage: NetworkImage(
                      'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos:41ab868251f39aceef211ffdc2a32a3420211207073002.png'),
                ),
              ),
              title: SizedBox.shrink()),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:DoubanTop250/page/homepage/homePage.dart';
import 'package:DoubanTop250/page/contactsPage.dart';
import 'package:DoubanTop250/page/findPage.dart';
import 'package:DoubanTop250/page/minePage.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xffF69409),
      ),
      debugShowCheckedModeBanner: false,
      home: MainPageWidget(),
    );
  }
}

class MainPageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MainPageState();
  }
}

class MainPageState extends State<MainPageWidget> {
  int _tabIndex = 0;
  var tabImages;
  var tabTitles = ['首页', '分类', '购物车', '我的'];
  var pageList;

  Image getTabIcon(int currentIndex) {
    if (currentIndex == _tabIndex) {
      return tabImages[currentIndex][1];
    }
    return tabImages[currentIndex][0];
  }

  Text getTabTitle(int currentIndex) {
    if (currentIndex == _tabIndex) {
      return Text(
        tabTitles[currentIndex],
        style: TextStyle(
          fontSize: 14.0,
          color: const Color(0xffF69409),
        ),
      );
    } else {
      return Text(
        tabTitles[currentIndex],
        style: TextStyle(fontSize: 14.0, color: const Color(0xff515151)),
      );
    }
  }

  Image getTabImage(path) {
    return Image.asset(
      path,
      width: 24.0,
      height: 24.0,
    );
  }

  void initData() {
    tabImages = [
      [
        getTabImage('images/tabBar/home.png'),
        getTabImage('images/tabBar/home_selected.png')
      ],
      [
        getTabImage('images/tabBar/category.png'),
        getTabImage('images/tabBar/category_selected.png')
      ],
      [
        getTabImage('images/tabBar/cart.png'),
        getTabImage('images/tabBar/cart_selected.png')
      ],
      [
        getTabImage('images/tabBar/mine.png'),
        getTabImage('images/tabBar/mine_selected.png')
      ]
    ];

    pageList = [
      HomePage(),
      ContactsPage(),
      FindPage(),
      MinePage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //初始化数据
    initData();

    return Scaffold(
      body: pageList[_tabIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: getTabIcon(0),
            title: getTabTitle(0),
          ),
          BottomNavigationBarItem(
            icon: getTabIcon(1),
            title: getTabTitle(1),
          ),
          BottomNavigationBarItem(
            icon: getTabIcon(2),
            title: getTabTitle(2),
          ),
          BottomNavigationBarItem(
            icon: getTabIcon(3),
            title: getTabTitle(3),
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _tabIndex,
        iconSize: 24.0,
        onTap: (index) {
          setState(() {
            _tabIndex = index;
          });
        },
      ),
    );
  }
}

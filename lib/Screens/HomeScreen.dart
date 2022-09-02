import 'package:flutter/material.dart';
import 'package:talabatey_ui/Screens/loginPage.dart';
import 'package:talabatey_ui/Screens/src/AppBar.dart';
import 'package:talabatey_ui/Screens/src/Filters.dart';
import 'package:talabatey_ui/Screens/src/Foods.dart';
import 'package:talabatey_ui/Screens/src/MainHeader.dart';
import 'package:talabatey_ui/Screens/src/restaurants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  int _Cindex = 3;
  @override
  Widget build(BuildContext context) {
    List<Widget> ScreensList = [
      LoginPage(),
      NotWorking(),
      NotWorking(),
      MainScreen(context),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _Cindex == 3 ? MyAppBar() : null,
      body: ScreensList[_Cindex],
      bottomNavigationBar: MyNavBar(),
    );
  }

  BottomNavigationBar MyNavBar() {
    return BottomNavigationBar(
      currentIndex: _Cindex,
      iconSize: 25,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.red,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded), label: "الحساب"),
        BottomNavigationBarItem(icon: Icon(Icons.list), label: "الطلبات"),
        BottomNavigationBarItem(icon: Icon(Icons.wallet), label: "المحفظة"),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "الرئيسية",
        ),
      ],
      onTap: (index) {
        setState(() {
          _Cindex = index;
        });
      },
    );
  }

  SafeArea MainScreen(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: RestaurantsList(context),
          ),
          Expanded(
            child: CustomScrollView(
              scrollDirection: Axis.vertical,
              shrinkWrap: false,
              slivers: [
                SliverList(
                  delegate: SliverChildListDelegate([PopularRest()]),
                ),
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  backgroundColor: Colors.white,
                  pinned: true,
                  flexibleSpace: FiltersCards(),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(childCount: 20,
                      (BuildContext context, index) {
                    return FoodCards(
                      context,
                      "برجرات",
                      "images/Burgers.jpg",
                      5000,
                      1500,
                      "المنصور",
                      "جيد جدا",
                      false,
                      true,
                    );
                  }),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

Container NotWorking() {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "Not Working Yet :)",
              style: TextStyle(fontSize: 32, color: Colors.black),
            )
          ],
        )
      ],
    ),
  );
}

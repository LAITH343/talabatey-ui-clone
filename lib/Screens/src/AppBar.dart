import 'package:flutter/material.dart';

AppBar MyAppBar() {
  return AppBar(
    elevation: 0,
    automaticallyImplyLeading: false,
    backgroundColor: Colors.white,
    leading: const Padding(
      padding: EdgeInsets.only(left: 15),
      child: Icon(
        Icons.search_sharp,
        color: Colors.black,
        size: 25,
      ),
    ),
    title: GestureDetector(
      onTap: () {
        print("select location clicked");
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.keyboard_arrow_down,
            color: Colors.black,
            size: 20,
          ),
          Text(
            "المنصور",
            style:
                TextStyle(fontSize: 20, color: Colors.black, letterSpacing: 1),
          )
        ],
      ),
    ),
    centerTitle: true,
    actions: [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
              padding: const EdgeInsets.only(right: 15),
              child: GestureDetector(
                onTap: () {
                  print("notifications clicked");
                },
                child: Stack(
                  children: [
                    const Icon(
                      Icons.notifications_outlined,
                      color: Colors.black,
                      size: 25,
                    ),
                    Positioned(
                      top: 1,
                      right: 1,
                      child: Container(
                        width: 8,
                        height: 8,
                        decoration: const BoxDecoration(
                            color: Colors.red, shape: BoxShape.circle),
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    ],
  );
}

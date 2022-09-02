import 'package:flutter/material.dart';

class RestaurantsInfo {
  String? name;
  String? imgpath;
  RestaurantsInfo({
    required this.name,
    required this.imgpath,
  });
}

List<RestaurantsInfo> restaurant_list = [
  RestaurantsInfo(name: "بلوشي", imgpath: "images/restaurant-logo.jpg"),
  RestaurantsInfo(name: "بلوشي", imgpath: "images/rest2.png"),
  RestaurantsInfo(name: "بلوشي", imgpath: "images/rest3.png"),
  RestaurantsInfo(name: "بلوشي", imgpath: "images/restaurant-logo.jpg"),
  RestaurantsInfo(name: "بلوشي", imgpath: "images/rest2.png"),
  RestaurantsInfo(name: "بلوشي", imgpath: "images/rest3.png"),
  RestaurantsInfo(name: "بلوشي", imgpath: "images/restaurant-logo.jpg"),
  RestaurantsInfo(name: "بلوشي", imgpath: "images/rest2.png"),
  RestaurantsInfo(name: "بلوشي", imgpath: "images/rest3.png"),
  RestaurantsInfo(name: "بلوشي", imgpath: "images/restaurant-logo.jpg"),
  RestaurantsInfo(name: "بلوشي", imgpath: "images/rest2.png"),
  RestaurantsInfo(name: "بلوشي", imgpath: "images/rest3.png"),
  RestaurantsInfo(name: "بلوشي", imgpath: "images/restaurant-logo.jpg"),
  RestaurantsInfo(name: "بلوشي", imgpath: "images/rest2.png"),
  RestaurantsInfo(name: "بلوشي", imgpath: "images/rest3.png"),
  RestaurantsInfo(name: "بلوشي", imgpath: "images/restaurant-logo.jpg"),
  RestaurantsInfo(name: "بلوشي", imgpath: "images/rest2.png"),
  RestaurantsInfo(name: "بلوشي", imgpath: "images/rest3.png"),
];

SizedBox RestaurantsList(var context) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * 0.20,
    width: double.infinity,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      reverse: true,
      itemCount: restaurant_list.length,
      itemBuilder: (BuildContext context, index) => RestCards(
          restaurant_list[index].name!,
          restaurant_list[index].imgpath!,
          context),
    ),
  );
}

TextButton RestCards(String Name, String imageAssets, var context) {
  return TextButton(
    onPressed: () {},
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: (MediaQuery.of(context).size.height * 0.2) / 2,
            height: (MediaQuery.of(context).size.height * 0.2) / 2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.withOpacity(0.7),
              image: DecorationImage(
                  image: AssetImage(imageAssets), fit: BoxFit.cover),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            Name,
            style: const TextStyle(fontSize: 16, color: Colors.black),
          ),
        )
      ],
    ),
  );
}

GestureDetector RestCatgo(int restcount, var context) {
  return GestureDetector(
    onTap: () {},
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Container(
                  width: (MediaQuery.of(context).size.height * 0.2) / 2,
                  height: (MediaQuery.of(context).size.height * 0.2) / 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.7),
                    image: const DecorationImage(
                        image: AssetImage("images/catgo.jpg"),
                        fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  top: 1,
                  left: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.red),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        restcount.toString(),
                        style:
                            const TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            )),
        const Padding(
          padding: EdgeInsets.only(top: 10),
          child: Text(
            "المطاعم",
            style: TextStyle(
              fontSize: 16,
              color: Color(0xffff372e),
            ),
          ),
        )
      ],
    ),
  );
}

import 'package:flutter/material.dart';

SizedBox RestaurantsList(var context) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * 0.18,
    width: double.infinity,
    child: ListView(
      scrollDirection: Axis.horizontal,
      reverse: true,
      children: [
        RestCatgo(200, context),
        RestCards("بلوشي", "images/restaurant-logo.jpg", context),
        RestCards("بلوشي", "images/rest2.png", context),
        RestCards("بلوشي", "images/rest3.png", context),
        RestCards("بلوشي", "images/rest4.jpg", context),
        RestCards("بلوشي", "images/rest5.jpg", context),
        RestCards("بلوشي", "images/restaurant-logo.jpg", context),
        RestCards("بلوشي", "images/rest2.png", context),
        RestCards("بلوشي", "images/rest3.png", context),
        RestCards("بلوشي", "images/rest4.jpg", context),
        RestCards("بلوشي", "images/rest5.jpg", context),
        RestCards("بلوشي", "images/restaurant-logo.jpg", context),
        RestCards("بلوشي", "images/rest2.png", context),
        RestCards("بلوشي", "images/rest3.png", context),
        RestCards("بلوشي", "images/rest4.jpg", context),
        RestCards("بلوشي", "images/rest5.jpg", context),
        RestCards("بلوشي", "images/restaurant-logo.jpg", context),
        RestCards("بلوشي", "images/rest2.png", context),
        RestCards("بلوشي", "images/rest3.png", context),
        RestCards("بلوشي", "images/rest4.jpg", context),
        RestCards("بلوشي", "images/rest5.jpg", context),
        RestCards("بلوشي", "images/restaurant-logo.jpg", context),
        RestCards("بلوشي", "images/rest2.png", context),
        RestCards("بلوشي", "images/rest3.png", context),
        RestCards("بلوشي", "images/rest4.jpg", context),
        RestCards("بلوشي", "images/rest5.jpg", context),
      ],
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
            style: const TextStyle(fontSize: 18, color: Colors.black),
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

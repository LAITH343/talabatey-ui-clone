import 'package:flutter/material.dart';

SizedBox PopularRest() {
  return SizedBox(
    height: 230,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 10),
          child: Text(
            "المحلات الاكثر شيوعا",
            style: TextStyle(fontSize: 20, color: Colors.red),
          ),
        ),
        Container(
          width: 215,
          height: 3,
          color: Colors.red,
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView(
            reverse: true,
            scrollDirection: Axis.horizontal,
            children: [
              for (int i = 0; i < 20; i++)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: RestCards("زرزور", "images/food.jpg"),
                ),
            ],
          ),
        )
      ],
    ),
  );
}

Container RestCards(String name, String bannerassets) {
  return Container(
    child: TextButton(
      onPressed: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 300,
            height: 110,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey,
                image: DecorationImage(
                    image: ExactAssetImage(bannerassets), fit: BoxFit.cover)),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            name,
            style: const TextStyle(fontSize: 22, color: Colors.red),
          )
        ],
      ),
    ),
  );
}

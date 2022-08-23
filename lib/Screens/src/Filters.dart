import 'package:flutter/material.dart';

SizedBox FiltersCards() {
  return SizedBox(
    height: 40,
    width: double.infinity,
    child: ListView(
      reverse: true,
      scrollDirection: Axis.horizontal,
      children: [
        const SizedBox(
          width: 15,
        ),
        FilterCardMaker("الكل", Icons.home_outlined, Colors.red),
        FilterCardMaker("الخصومات", Icons.discount_outlined, Colors.grey),
        FilterCardMaker("يدعم المحفضة", Icons.wallet_travel, Colors.grey),
        FilterCardMaker("توصيل طلباتي", Icons.delivery_dining, Colors.grey),
        FilterCardMaker("توصيل مجاني", Icons.gif_box, Colors.grey),
        FilterCardMaker("حصري", Icons.star_border_outlined, Colors.grey),
        FilterCardMaker("جديد", Icons.add_shopping_cart, Colors.grey),
      ],
    ),
  );
}

Padding FilterCardMaker(String name, IconData icon, Color bgcolor) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5),
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          primary: bgcolor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            width: 10,
          ),
          Text(
            name,
            style: const TextStyle(fontSize: 14, color: Colors.white),
          ),
          const SizedBox(
            width: 10,
          ),
          Icon(
            icon,
            color: Colors.white,
            size: 20,
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    ),
  );
}

import 'package:flutter/material.dart';

// Create class to make pass paramenters better
class Filters {
  String? Label;
  IconData? iconname;
  Color? cardcolor;
  Filters({
    required this.Label,
    required this.iconname,
    required this.cardcolor,
  });
}

List<Filters> filtercards = [
  Filters(Label: "الكل", iconname: Icons.home_outlined, cardcolor: Colors.red),
  Filters(
      Label: "الخصومات",
      iconname: Icons.discount_outlined,
      cardcolor: Colors.grey),
  Filters(
      Label: "يدعم المحفضة",
      iconname: Icons.wallet_travel,
      cardcolor: Colors.grey),
  Filters(
      Label: "توصيل طلباتي",
      iconname: Icons.delivery_dining,
      cardcolor: Colors.grey),
  Filters(
      Label: "توصيل مجاني", iconname: Icons.gif_box, cardcolor: Colors.grey),
  Filters(
      Label: "حصري",
      iconname: Icons.star_border_outlined,
      cardcolor: Colors.grey),
  Filters(
      Label: "جديد", iconname: Icons.add_shopping_cart, cardcolor: Colors.grey),
];


SizedBox FiltersCards() {
  return SizedBox(
    height: 40,
    width: double.infinity,
    child: ListView.builder(
      itemCount: filtercards.length,
      reverse: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, index) => FilterCardMaker(
          filtercards[index].Label!,
          filtercards[index].iconname!,
          filtercards[index].cardcolor!),
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

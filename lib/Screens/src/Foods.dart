import 'package:flutter/material.dart';

Padding FoodCards(
    var context,
    String Name,
    String ImageAsset,
    int LowestPrice,
    int DeleverPrice,
    String Location,
    String Rate,
    bool Bromocode,
    bool Exclusive) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: TextButton(
      onPressed: (){},
      child: SizedBox(
        height: 250,
        child: FoodCard(
          context,
          Name,
          ImageAsset,
          LowestPrice,
          DeleverPrice,
          Location,
          Rate,
          Bromocode,
          Exclusive,
        ),
      ),
    ),
  );
}

Container FoodCard(
    var context,
    String Name,
    String ImageAsset,
    int LowestPrice,
    int DeleverPrice,
    String Location,
    String Rate,
    bool Bromocode,
    bool Exclusive) {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Images(context, ImageAsset, Bromocode, Exclusive),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "الحد الادنى للطلب: $LowestPrice د.ع",
                style: const TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      Name,
                      style: const TextStyle(fontSize: 24, color: Colors.red),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
          child: SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Text(
                        "سعر التوصيل: $DeleverPrice د.ع",
                        style: const TextStyle(color: Colors.grey),
                      ),
                      const Icon(
                        Icons.delivery_dining_rounded,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Text(
                        Rate,
                        style: const TextStyle(color: Colors.grey),
                      ),
                      const Icon(
                        Icons.face,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Text(
                        Location,
                        style: const TextStyle(color: Colors.grey),
                      ),
                      const Icon(
                        Icons.location_on_outlined,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ),
  );
}

Container Images(
    var context, String ImageAsset, bool Bromocode, bool Exclusive) {
  return Container(
    child: Stack(
      children: [
        Container(
          height: 140,
          width: MediaQuery.of(context).size.width - 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey,
            image: DecorationImage(
              image: AssetImage(ImageAsset),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 15,
          right: 15,
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Icon(
                Icons.delivery_dining_rounded,
                size: 25,
                color: Colors.red,
              ),
            ),
          ),
        ),
        if (Bromocode)
          Positioned(
            top: 15,
            right: 65,
            child: Container(
              height: 40,
              width: 90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  "بروموكود",
                  style: TextStyle(fontSize: 20, color: Colors.red),
                ),
              ),
            ),
          ),
        if (Exclusive)
          Positioned(
            top: 15,
            left: 15,
            child: Container(
              height: 30,
              width: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.red),
              child: const Center(
                child: Text(
                  "حصري",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ),
      ],
    ),
  );
}

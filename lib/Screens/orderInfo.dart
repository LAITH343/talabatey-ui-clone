import 'package:flutter/material.dart';

class OrderInfo extends StatefulWidget {
  final String Imageasset;
  final String name;
  final String location;
  final String rate;
  final String deleverprice;
  final String lowestpeice;
  final int itemprice;
  final String ItemName;
  const OrderInfo({
    required this.name,
    required this.Imageasset,
    required this.deleverprice,
    required this.rate,
    required this.location,
    required this.lowestpeice,
    required this.itemprice,
    required this.ItemName,
  });

  @override
  State<OrderInfo> createState() => _OrderInfoState();
}

class _OrderInfoState extends State<OrderInfo> {
  int _ItemsCounter = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(clipBehavior: Clip.none, children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.Imageasset), fit: BoxFit.cover)),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.2),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.8,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Text(
                            widget.name,
                            style: const TextStyle(fontSize: 20, color: Colors.red),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    widget.rate,
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black.withOpacity(0.4)),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.face,
                                    size: 20,
                                    color: Colors.black.withOpacity(0.4),
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              Row(
                                children: [
                                  Text(
                                    widget.deleverprice,
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black.withOpacity(0.4)),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.delivery_dining_outlined,
                                    size: 20,
                                    color: Colors.black.withOpacity(0.4),
                                  )
                                ],
                              ),
                              Container(
                                width: 10,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    widget.lowestpeice,
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black.withOpacity(0.4)),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.circle_outlined,
                                    size: 20,
                                    color: Colors.black.withOpacity(0.4),
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              Row(
                                children: [
                                  Text(
                                    widget.location,
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black.withOpacity(0.4)),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.location_on_outlined,
                                    size: 20,
                                    color: Colors.black.withOpacity(0.4),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                child: Text(
                                  "الوقت المتوقع للوصول من 15 الى ساعة",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black.withOpacity(0.4)),
                                ),
                              ),
                              Icon(
                                Icons.timer_outlined,
                                size: 20,
                                color: Colors.black.withOpacity(0.4),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(widget.ItemName,
                                  style:
                                      const TextStyle(fontSize: 20, color: Colors.red))
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Icon(
                                      Icons.keyboard_arrow_up,
                                      color: Colors.black,
                                      size: 30,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 5),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        const Text(
                                          "اضافات",
                                          style: TextStyle(
                                              fontSize: 16, color: Colors.red),
                                        ),
                                        Text(
                                          "اختياري",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color:
                                                  Colors.grey.withOpacity(0.5)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Text(
                                "تعليمات خاصة",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  label: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 10),
                                        child: Text(
                                          "اذا كان لديك أي ملاحظات يرجى كتابتها هنا",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black.withOpacity(0.5),
                                          ),
                                        ),
                                      )
                                    ],
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 150,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (_ItemsCounter != 0) _ItemsCounter--;
                                    });
                                  },
                                  child: Container(
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.2),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.remove,
                                      color: Colors.black,
                                      size: 25,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  width: 100,
                                  height: 35,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Center(
                                    child: Text(
                                      "$_ItemsCounter",
                                      style: const TextStyle(
                                          fontSize: 16, color: Colors.black),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _ItemsCounter++;
                                    });
                                  },
                                  child: Container(
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.2),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.black,
                                      size: 25,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "د.ع",
                                    style: TextStyle(
                                        color: Colors.red, fontSize: 14),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "${widget.itemprice * _ItemsCounter}",
                                    style: const TextStyle(
                                        color: Colors.red, fontSize: 14),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          child: ElevatedButton(
                            onPressed: _ItemsCounter != 0 ? () {} : null,
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.8,
                              height: 40,
                              child: const Center(
                                child: Text(
                                  "أضافة الى السلة",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.of(context).pop();
                });
              },
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                    size: 25,
                  ),
                ),
              ),
            ),
          ),
        ]),
      )),
    );
  }
}

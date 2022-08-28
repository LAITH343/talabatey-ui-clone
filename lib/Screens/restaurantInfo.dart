import 'package:flutter/material.dart';
import 'package:talabatey_ui/Screens/orderInfo.dart';

class RestaurantInfoPage extends StatefulWidget {
  final String Imageasset;
  final String name;
  final String location;
  final String rate;
  final String deleverprice;
  final String lowestpeice;
  const RestaurantInfoPage({
    required this.name,
    required this.Imageasset,
    required this.deleverprice,
    required this.rate,
    required this.location,
    required this.lowestpeice,
  });

  @override
  State<RestaurantInfoPage> createState() => _RestaurantInfoPageState();
}

class _RestaurantInfoPageState extends State<RestaurantInfoPage> {
  List<List> items = [
    ["بيبسي", "images/pepsi.png", 500],
    ["ريزو", "images/rezo_chicken.jpg", 5000],
    ["برياني", "images/beriane.jpg", 8000],
    ["صاج", "images/saj.jpg", 3500],
    ["مندي", "images/mende.jpg", 15000],
  ];
  int _tabsindex = 2;
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
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
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
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
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
                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
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
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                                    "ابحث عن طبق أو مادة",
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
                  Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: DefaultTabController(
                        length: 3,
                        initialIndex: _tabsindex,
                        child: Column(
                          children: [
                            TabBar(
                              indicatorColor: Colors.red,
                              labelColor: Colors.red,
                              unselectedLabelColor:
                                  Colors.black.withOpacity(0.4),
                              tabs: [
                                TabMaker("مشروبات غازيه"),
                                TabMaker("الاكلات السريعة"),
                                TabMaker("الاكثر طلبا"),
                              ],
                              onTap: (index) {
                                setState(() {
                                  _tabsindex = index;
                                });
                              },
                            ),
                            Container(
                              width: double.infinity,
                              color: Colors.white,
                              height:
                                  MediaQuery.of(context).size.height * 0.4,
                              child: ListView(
                                children: [
                                  if (_tabsindex == 2)
                                    for (var item in items)
                                      Column(
                                        children: [
                                          SubTabs(item[0], item[1], item[2]),
                                          Divider(
                                            color: Colors.grey.withOpacity(0.5),
                                            thickness: 1,
                                          ),
                                        ],
                                      ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ))
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

  Padding SubTabs(String ItemName, String Itemimg, int itemprice) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: TextButton(
        style: TextButton.styleFrom(primary: Colors.grey),
        onPressed: () {
          setState(() {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => OrderInfo(
                      Imageasset: Itemimg,
                      deleverprice: widget.deleverprice,
                      location: widget.location,
                      lowestpeice: widget.lowestpeice,
                      name: widget.name,
                      rate: widget.rate,
                      itemprice: itemprice,
                      ItemName: ItemName,
                    )));
          });
        },
        child: SizedBox(
          width: double.infinity,
          height: 100,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Text(
                  "$itemprice",
                  style: const TextStyle(fontSize: 15, color: Colors.black),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          ItemName,
                          style: const TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(Itemimg), fit: BoxFit.cover)),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox TabMaker(String label) {
    return SizedBox(
      height: 40,
      width: double.infinity,
      child: Center(
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

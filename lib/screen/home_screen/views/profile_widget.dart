import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app/color_app.dart';

class ProfileWidget extends GetResponsiveView {
  @override
  Widget builder() {
    return Container(
      color: ColorApp.primery,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                Row(
                  children: const [
                    Icon(Icons.shopify),
                    Icon(Icons.notifications_active),
                    Icon(Icons.person_pin)
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Icon(
              Icons.account_circle_sharp,
              size: 80,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text('Lara', style: TextStyle(fontWeight: FontWeight.w600)),
            const Text('lara.lara@gmail.com'),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              'assets/images/win.png',
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('1.2k Reward Points',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Expanded(
                    flex: 1,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      color: Color(0xff2B335B),
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Icon(
                          Icons.assignment,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.lock,
                                color: Colors.yellow,
                                size: 17,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text('WishList',
                                  style:
                                      TextStyle(fontWeight: FontWeight.w400)),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            '13 Books',
                            style: TextStyle(
                                color: Colors.grey.shade400,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.people,
                                size: 17,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text('Private',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Expanded(
                    flex: 1,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      color: Color(0xff2B335B),
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Icon(
                          Icons.auto_stories,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.lock,
                                color: Colors.yellow,
                                size: 17,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text('Read',
                                  style:
                                      TextStyle(fontWeight: FontWeight.w400)),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            '13 Books',
                            style: TextStyle(
                                color: Colors.grey.shade400,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.people,
                                size: 17,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text('Shared with 03 ',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Divider(
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                color: const Color(0xff2B335B),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Help us Get Better',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                          'Lorem ipsum dolor sit amet,consectetuer adipiscing elit. Aeneancommodo ligula  eget dolor. Loremipsum dolor sit amet, consectetu eradipiscing elit.'),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        color: Color(0xff9098D8),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Vote'),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

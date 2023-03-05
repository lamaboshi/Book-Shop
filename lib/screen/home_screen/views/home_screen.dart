import 'package:book_app/app/color_app.dart';
import 'package:book_app/screen/home_screen/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:overlayment/overlayment.dart';

import '../data/book.dart';
import 'drawer_widget.dart';
import 'profile_widget.dart';

class HomeScreen extends GetResponsiveView<HomeController> {
  HomeScreen({super.key});

  @override
  Widget builder() {
    return Scaffold(
      backgroundColor: ColorApp.primery,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Card(
          color: ColorApp.second,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: SizedBox(
              height: screen.height,
              width: screen.width,
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {
                                Overlayment.show(OverPanel(
                                    child: DrawerWidget(),
                                    alignment: Alignment.centerLeft,
                                    width: screen.width / 1.8));
                              },
                              icon: const Icon(Icons.menu_rounded)),
                          IconButton(
                              onPressed: () {
                                Overlayment.show(OverPanel(
                                    child: ProfileWidget(),
                                    alignment: Alignment.centerRight,
                                    width: screen.width / 1.8));
                              },
                              icon: const Icon(Icons.person)),
                        ],
                      ),
                      Card(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        color: const Color(0xff2B335B),
                        child: SizedBox(
                            width: screen.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text('Hi Lara!',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold)),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const Text(
                                            'Here is a customised world \nof books for you.',
                                            style:
                                                TextStyle(color: Colors.white)),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Card(
                                          color: ColorApp.second,
                                          shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30)),
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text('Browse Latest',
                                                style: TextStyle(
                                                    color: Colors.white)),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Image.asset(
                                    'assets/images/read.png',
                                  ),
                                )
                              ],
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Recommended For You',
                          style: TextStyle(
                              color: Colors.grey.shade400,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Obx(() => controller.isLoading.value
                          ? const CircularProgressIndicator()
                          : Wrap(
                              children: controller.books
                                  .map((element) => bookWidget(element))
                                  .toList(),
                            ))
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget bookWidget(Book book) => Column(
        children: [
          Row(
            children: [
              Expanded(child: Image.network(book.image!)),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    book.nameBook!,
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    book.publichDate!,
                    style: TextStyle(
                      color: Colors.grey.shade400,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        book.price!.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Icon(
                        Icons.money_rounded,
                        color: Colors.red.shade200,
                      )
                    ],
                  ),
                ],
              ))
            ],
          ),
          const Divider(
            color: Colors.white,
          )
        ],
      );
}

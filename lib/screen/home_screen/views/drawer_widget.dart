import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:overlayment/overlayment.dart';

import '../../../app/color_app.dart';

class DrawerWidget extends GetResponsiveView {
  @override
  Widget builder() {
    return Drawer(
      backgroundColor: ColorApp.primery,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                IconButton(
                    onPressed: () {
                      Overlayment.dismissLast();
                    },
                    icon: const Icon(Icons.arrow_back)),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                'Book App',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 21,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            const ListTile(
              leading: Icon(Icons.search),
              title: Text('Discover'),
            ),
            const ListTile(
              leading: Icon(Icons.workspaces_filled),
              title: Text('Recommendations'),
            ),
            const ListTile(
              leading: Icon(Icons.assignment),
              title: Text('WishList'),
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
    );
  }
}

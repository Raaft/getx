import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/home_controller.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  HomeController controller = Get.put(HomeController(), );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Obx(
        () => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  controller.increase();
                },
                icon: const Icon(Icons.add)),
            Text(
              '${controller.num.value}',
              style: const TextStyle(fontSize: 30, color: Colors.blue),
            ),
            IconButton(
                onPressed: () {
                  controller.decrease();
                },
                icon: const Icon(Icons.remove)),
          ],
        ),
      )),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'package:flutter_emoji/flutter_emoji.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Text(
                "Current Emote: ${controller.currentEmote}"
              )
            ],
          )
        ],
      ),
    );
  }
}

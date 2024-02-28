import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../services/storage_service.dart';
import '../modules/home/controllers/home_controller.dart';
import 'package:flutter_emoji/flutter_emoji.dart';


class ServiceEmote extends GetxService {
  final storage = Get.find<ServiceStoreage>();

  var currentEmote = Emotes.list[0];

  Future<void> getEmoteFromStorage() async {
    currentEmote = await storage.readEmote() ?? Emotes.list[0];
  }

  void setEmote(v){
    currentEmote = v;
    _writeEmoteToStorage(v);
  }

  Future<void> _writeEmoteToStorage(String v) async {
    await storage.writeEmote(v);
  }
  
}

abstract class Emotes {
  static List<String> list = ["\u{1f600}", "\u{1f643}", "\u{1f928}"];
}
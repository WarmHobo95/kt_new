import 'package:get/get.dart';
import 'dart:html';

import 'package:kt_new/app/services/change_emote.dart';
import 'package:kt_new/app/services/storage_service.dart';
import 'package:flutter_emoji/flutter_emoji.dart';

class HomeController extends GetxController {
  final storage = Get.find<ServiceStoreage>();
  final _serviceEmote = Get.find<ServiceEmote>();

  String get currentEmote => _serviceEmote.currentEmote;

  void setCurrentEmote(v){
    _serviceEmote.setEmote(v);
  }
}

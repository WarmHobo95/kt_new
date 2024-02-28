import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum StorageKeys {
  emote,
}

class ServiceStoreage extends GetxService {
  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  Future<void> writeEmote(String value) async {
    await _storage.write(key: StorageKeys.emote.name, value: value);
  }

  Future<String?> readEmote() async {
    var mode = await _storage.read(key: StorageKeys.emote.name);
    return mode;
  }
  
  Future<String?> read(String key) async {
    return await _storage.read(key: key);
  }

  Future<void> delete(String key) async {
    await _storage.delete(key: key);
  }

  Future<void> deleteAll() async {
    await _storage.deleteAll();
  }
}
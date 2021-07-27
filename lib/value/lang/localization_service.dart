import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalizationService extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {'default_username': 'Endcovi User'},
        'vi_VN': {'default_username': 'Người dùng Endcovi'}
      };
}

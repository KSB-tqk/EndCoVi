import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalizationService extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'default_username': 'Endcovi User',
          'post': 'Post',
          'follower': 'Followers',
          'following': 'Following',
        },
        'vi_VN': {
          'default_username': 'Người dùng Endcovi',
          'post': 'Bài Viết',
          'follower': 'Người theo dõi',
          'following': 'Đang theo dõi',
        }
      };
}

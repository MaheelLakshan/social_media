import 'package:flutter/material.dart';
import 'package:social_media/model/user.dart';

class AppRepo extends ChangeNotifier{
  String? _token;
  User? user;
}

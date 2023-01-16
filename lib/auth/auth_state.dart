import 'package:flutter/material.dart';

class AuthState extends ChangeNotifier {
  String _phoneNumber = '';
  String get phoneNumber => '+254$_phoneNumber';

  void setPhoneNumber(p0) => _phoneNumber = p0;
}

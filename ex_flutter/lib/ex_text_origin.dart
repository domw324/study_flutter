import 'package:flutter/material.dart';

class CounterTest {
  int cnt = 0;

  void increment() => cnt++;
  void decrement() => cnt--;
}

class AlphabetConverter {
  String mixedHello = 'Hello';

  String upperAlphabet() {
    return mixedHello.toUpperCase();
  }
  String lowerAlphabet() {
    return mixedHello.toLowerCase();
  }
}

class FieldValidator {
  bool validateSocialSecurityNumber(String input) {
    if (input.isEmpty)
      return false;

    Pattern pattern = r'^[0-9]{2}(0[1-9]|1[0-2])(0[1-9]|[12][0-9]|[3][01])-([1-4][0-9]{6})';
    RegExp exp = RegExp(pattern);

    if (exp.hasMatch(input))
      return true; // 유효한 주민번호면 true 리턴

    return false;
  }

  bool validateEmail(String email) {
    if (email.isEmpty)
      return false;

    Pattern pattern = r'^\w+@[a-zA-z_]+?\.[a-zA-Z]{2,3}$';
    RegExp exp = RegExp(pattern);

    if(exp.hasMatch(email))
      return true;

    return false;
  }
}
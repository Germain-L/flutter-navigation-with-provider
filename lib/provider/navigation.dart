import 'package:flutter/foundation.dart';

class Navigation with ChangeNotifier {
  String currentPageTitle = "Sign in";


  List<String> pageHistory = [];

  void flush() {
    pageHistory.clear();
  }

  void newPage(String name) {
    currentPageTitle = name;
    pageHistory.add(name);
    notifyListeners();
  }

  void pop() {
    currentPageTitle = pageHistory.last;
    pageHistory.removeLast();
    notifyListeners();
  }
}
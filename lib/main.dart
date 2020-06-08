import 'package:flutter/material.dart';
import 'package:flutter_navigation_with_provider/pages/account.dart';
import 'package:flutter_navigation_with_provider/pages/home.dart';
import 'package:flutter_navigation_with_provider/pages/sign_in.dart';
import 'package:flutter_navigation_with_provider/provider/navigation.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (context) => Navigation(),
        child: Scaffolding(),
      ),
    );
  }
}

class Scaffolding extends StatelessWidget {
  static Map<String, int> pagesWithTitles = {
    "Home": 0,
    "Sign in": 1,
    "Account": 2,
  };

  static List<Widget> pages = [
    Home(),
    SignIn(),
    Account(),
  ];

  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<Navigation>(context);
    return WillPopScope(
      // this will override back button / gesture
      onWillPop: () async {
        navigationProvider.pop();
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(navigationProvider.currentPageTitle),
        ),

        // `pagesWithTitles[navigationProvider.currentPageTitle]` will return an index used in `pages`
        body: pages[pagesWithTitles[navigationProvider.currentPageTitle]],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_navigation_with_provider/provider/navigation.dart';
import 'package:provider/provider.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<Navigation>(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("This is the account page"),
          FlatButton(
            child: Text("Flush pages"),
            onPressed: () => navigationProvider.flush(),
          ),
          FlatButton(
            child: Text("home"),
            onPressed: () => navigationProvider.newPage("Home"),
          ),
          FlatButton(
            child: Text("sign in"),
            onPressed: () => navigationProvider.newPage("Sign in"),
          ),
        ],
      ),
    );
  }
}
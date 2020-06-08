import 'package:flutter/material.dart';
import 'package:flutter_navigation_with_provider/provider/navigation.dart';
import 'package:provider/provider.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<Navigation>(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("This is the Sign in page"),
          FlatButton(
            child: Text("Flush pages"),
            onPressed: () => navigationProvider.flush(),
          ),
          FlatButton(
            child: Text("Account"),
            onPressed: () => navigationProvider.newPage("Account"),
          ),
          FlatButton(
            child: Text("Home"),
            onPressed: () => navigationProvider.newPage("Home"),
          ),
        ],
      ),
    );
  }
}
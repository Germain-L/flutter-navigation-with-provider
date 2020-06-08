import 'package:flutter/material.dart';
import 'package:flutter_navigation_with_provider/provider/navigation.dart';
import 'package:provider/provider.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<Navigation>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("This is the home page"),
        FlatButton(
          child: Text("Flush pages"),
          onPressed: () => navigationProvider.flush(),
        ),
        FlatButton(
          child: Text("Account"),
          onPressed: () => navigationProvider.newPage("Account"),
        ),
        FlatButton(
          child: Text("Sign in"),
          onPressed: () => navigationProvider.newPage("Sign in"),
        ),
      ],
    );
  }
}
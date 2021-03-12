import 'package:brew_crew/models/fb_user.dart';
import 'package:flutter/material.dart';
import 'package:brew_crew/screens/home/home.dart';
import 'package:brew_crew/screens/authenticate/authenticate.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    final user = Provider.of<FbUser>(context);
    print(user);

    // Return either Home or Authenticate widget
    return Container(
      child: Authenticate(),
    );
  }
}
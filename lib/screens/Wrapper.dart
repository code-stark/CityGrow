import 'package:flutter/material.dart';
import 'package:citygrow/UI/BottomNavigationBar.dart';
import 'package:citygrow/UI/OnBoarding.dart';
import 'package:provider/provider.dart';
import 'package:citygrow/models/user.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    //  ! return ethier Home or auth widget
    if (user == null) {
      return OnBoarding();
    } else {
      return bottomNavigationBar();
    }
    
  }
}

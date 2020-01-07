import 'package:flutter/material.dart';
import 'package:citygrow/ListItem/HomeGridItemRecomended.dart';
import 'package:citygrow/models/user.dart';
import 'package:citygrow/screens/Wrapper.dart';
import 'package:citygrow/screens/notify/productNotify.dart';
import 'package:citygrow/services/auth.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StreamProvider<User>.value(
          value: AuthService().user,
        ),
        Provider<AuthService>(create: (BuildContext context) => AuthService()),
        ChangeNotifierProvider(
          create: (context) => ProductApiNotifier(),
        ),
        // Provider<FileData>(builder: (BuildContext context)=> FileData())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Wrapper(),
      ),
    );
  }
}

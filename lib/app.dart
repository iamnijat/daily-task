import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        title: 'Flutter Task',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            elevation: 0,
          ),
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      );
    });
  }
}

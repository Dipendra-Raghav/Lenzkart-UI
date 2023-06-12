import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(411, 876),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Lenzkart UI',
          theme: ThemeData(
            primaryColor: Colors.white,
            appBarTheme: const AppBarTheme(
              color: Colors.white,
              iconTheme: IconThemeData(
                color: Colors.black, // Sets the color of the leading icon
              ),
            ),
          ),
          home: child,
        );
      },
      child: const Homescreen(),
    );
  }
}

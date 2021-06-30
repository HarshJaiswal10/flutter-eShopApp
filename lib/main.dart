import 'package:flutter/material.dart';
import 'package:flutter_1/core/store.dart';
import 'package:flutter_1/pages/cart_page.dart';
import 'package:flutter_1/pages/login_page.dart';
import 'package:flutter_1/pages/signup_page.dart';
import 'package:flutter_1/utils/routes.dart';
import 'package:flutter_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'pages/home_page.dart';

void main() {
  runApp(VxState(store: MyStore(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.LoginRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.LoginRoute: (context) => LoginPage(),
        MyRoutes.SignupRoute: (context) => SignUpPage(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}

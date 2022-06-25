import 'package:chat_app/routes/app_routes.dart';
import 'package:chat_app/styles/theme_style.dart';
import 'package:chat_app/views/auth_view.dart';
import 'package:chat_app/views/home_view.dart';
import 'package:chat_app/views/unknown_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      getPages: RouteView.values.map((e) {
        switch (e) {
          case RouteView.home:
            return GetPage(name: "/${e.name}", page: () => HomeView());
          case RouteView.auth:
            return GetPage(name: "/${e.name}", page: () => AuthView());
          default:
            return GetPage(name: "/${e.name}", page: () => UnknownView());
        }
      }).toList(),
      initialRoute: RouteView.home.name,
    );
  }
}

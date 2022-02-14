import 'package:ecommerceflutterapp/routes/routes.dart';
import 'package:ecommerceflutterapp/view/screen/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'E Commerce ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      initialRoute: AppRoutes.welcome,
      getPages:AppRoutes.routes,

    );
  }
}

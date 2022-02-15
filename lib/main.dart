import 'package:ecommerceflutterapp/logic/controllers/theme_controller.dart';
import 'package:ecommerceflutterapp/routes/routes.dart';
import 'package:ecommerceflutterapp/utils/theme.dart';
import 'package:ecommerceflutterapp/view/screen/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async{


  await GetStorage.init();
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false ,
      title: 'E Commerce ',
      theme: ThemesApp.light,
      darkTheme: ThemesApp.dark,
      themeMode: ThemeController().themeDataGet,
      initialRoute: AppRoutes.welcome,
      getPages:AppRoutes.routes,

    );
  }
}

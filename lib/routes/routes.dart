import 'package:ecommerceflutterapp/view/screen/welcome_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppRoutes{
  //initial rout
  static const welcome =Routes.welcomeScreen ;
  //get page

  static final routes=[
    GetPage(
      name: Routes.welcomeScreen,
      page:()=> const WelcomeScreen() ,
    ),
  ];
}


class Routes{
  static const welcomeScreen ='/welcomeScreen' ;
}
import 'package:ecommerceflutterapp/view/screen/auth/login_Screen.dart';
import 'package:ecommerceflutterapp/view/screen/auth/singup_screen.dart';
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
    GetPage(
      name: Routes.loginScreen,
      page:()=> const LoginScreen() ,
    ),  GetPage(
      name: Routes.signUpScreen,
      page:()=>  SignUpScreen() ,
    ),
  ];
}


class Routes{
  static const welcomeScreen ='/welcomeScreen' ;
  static const loginScreen ='/loginScreen' ;
  static const signUpScreen ='/signUpScreen' ;
}
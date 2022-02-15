import 'package:ecommerceflutterapp/logic/bindings/auth_binding.dart';
import 'package:ecommerceflutterapp/view/screen/auth/forgot_password_screen.dart';
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
      page:()=>  LoginScreen() ,
      binding: AuthBinding(),
    ),  GetPage(
      name: Routes.signUpScreen,
      page:()=>  SignUpScreen() ,
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.forgotPassword,
      page:()=>   ForgotPassword() ,
      binding: AuthBinding(),

    ),
  ];
}


class Routes{
  static const welcomeScreen ='/welcomeScreen' ;
  static const loginScreen ='/loginScreen' ;
  static const signUpScreen ='/signUpScreen' ;
  static const forgotPassword ='/forgotPassword' ;
}
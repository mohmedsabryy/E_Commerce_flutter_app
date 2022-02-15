import 'package:ecommerceflutterapp/view/screen/category_screen.dart';
import 'package:ecommerceflutterapp/view/screen/favorites_screen.dart';
import 'package:ecommerceflutterapp/view/screen/home_screen.dart';
import 'package:ecommerceflutterapp/view/screen/main_screen.dart';
import 'package:ecommerceflutterapp/view/screen/settings_screen.dart';
import 'package:get/get.dart';

class MainController extends GetxController
{
  RxInt currentIndex = 0.obs;

  final tabs = [
   HomeScreen(),
    CategorySceen(),
    FavoritesScreen(),
    SettingsScreen(),
  ].obs;

  final title=[
    "Home",
    "Categories",
    "Favourites",
    "Settings",
  ].obs;
}
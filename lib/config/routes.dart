import 'package:flutter/material.dart';
import '../screens/user/home_screen.dart';
import '../screens/user/house_list_screen.dart';
import '../screens/user/favorite_screen.dart';
import '../screens/user/about_screen.dart';
import '../screens/user/search_screen.dart';
import '../screens/user/filter_province_screen.dart';

class AppRoutes {
  static const String mainNav = '/main-nav';
  static const String home = '/home';
  static const String houseList = '/house-list';
  static const String favorite = '/favorite';
  static const String about = '/about';
  static const String search = '/search';
  static const String filterProvince = '/filter-province';

  static Map<String, WidgetBuilder> get routes => {
        mainNav: (context) => const HomeScreen(),
        home: (context) => const HomeScreen(),
        houseList: (context) => const HouseListScreen(),
        favorite: (context) => const FavoriteScreen(),
        about: (context) => const AboutScreen(),
        search: (context) => const SearchScreen(),
        filterProvince: (context) => const FilterProvinceScreen(),
      };
}
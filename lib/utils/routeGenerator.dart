import 'package:flutter/material.dart';
import 'package:one_call/drawer/address.dart';
import 'package:one_call/drawer/fav.dart';
import 'package:one_call/drawer/orders.dart';
import 'package:one_call/drawer/profile.dart';
import 'package:one_call/screens/cart.dart';
import 'package:one_call/screens/home.dart';
import 'package:one_call/screens/restaurants.dart';
import 'package:one_call/screens/search.dart';
import 'package:one_call/utils/constants.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case rHome:
        return MaterialPageRoute(builder: (_) => Home());
      case rSearch:
        return MaterialPageRoute(builder: (_) => Search());
      case rFav:
        return MaterialPageRoute(builder: (_) => Fav());
      case rOrder:
        return MaterialPageRoute(builder: (_) => Orders());
      case rAddress:
        return MaterialPageRoute(builder: (_) => Address());
      case rProfile:
        return MaterialPageRoute(builder: (_) => Profile());
      case rCart:
        return MaterialPageRoute(builder: (_) => Cart());
      case rRestaurants:
        return MaterialPageRoute(builder: (_) => Restaurants());

      default:
        return null;
    }
  }
}

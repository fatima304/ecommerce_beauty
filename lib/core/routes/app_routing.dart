import 'package:flutter/material.dart';

class AppRouting{

  Route? generateRoute(RouteSettings routesSettings){
    switch(routesSettings.name){
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${routesSettings.name}'),
            ),
          ),
        );
    }
  }
}
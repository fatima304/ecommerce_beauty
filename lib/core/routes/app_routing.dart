import 'package:beauty_ecommerce/features/details/presentation/screen/ui/details_screen.dart';
import 'package:beauty_ecommerce/features/on_boarding/presentation/manager/on_boarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/on_boarding/presentation/screen/ui/on_boarding_screen.dart';
import '../../features/splash/presentation/screen/ui/splash_screen.dart';
import 'routes.dart';

class AppRouting {
  Route? generateRoute(RouteSettings routesSettings) {
    switch (routesSettings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(
          builder: (_) => SplashScreen(),
        );
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) =>
              BlocProvider(
                create: (context) => OnBoardingCubit()..loadOnBoardingScreen(),
                child: OnBoardingScreen(),
              ),
        );
        case Routes.detailsScreen:
        return MaterialPageRoute(
          builder: (_) => DetailsScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) =>
              Scaffold(
                body: Center(
                  child: Text('No route defined for ${routesSettings.name}'),
                ),
              ),
        );
    }
  }
}

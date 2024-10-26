import 'package:beauty_ecommerce/core/widgets/custom_bottom_navigation_bar.dart';
import 'package:beauty_ecommerce/features/home/presentation/screen/widgets/home_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeBody(),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

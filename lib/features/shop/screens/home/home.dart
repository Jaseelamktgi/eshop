import 'package:flutter/material.dart';
import '../../../../common/widgets/custom_shapes/primary_header.dart';
import 'widgets/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimayHeader(
                child: Column(
              children: [
                // Appbar
                HomeAppBar(),

                // Search bar

                // Categories
              ],
            ))
          ],
        ),
      ),
    );
  }
}

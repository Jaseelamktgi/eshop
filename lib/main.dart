import 'package:eshop/utils/theme/theme.dart';
import 'package:flutter/material.dart';

//-------- Entry point of the app ---------
void main() {
  // Add Widgets Binding
  // Init Local Storage
  // Await Native Splash 
  // Initialize Firebase
  // Initialize Authentication

  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme, 
    );
  }
}
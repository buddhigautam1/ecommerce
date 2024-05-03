
import 'package:ecommerce/utlis/themes/theme.dart';
import 'package:ecommerce/utlis/widgets/navigationbar.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: const MyNavigationBar()
      
    );
    
      
  }
}
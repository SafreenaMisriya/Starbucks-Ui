import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:starbucks/view/widgets/mediaquery.dart';
import 'view/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppMediaquery().init(context);
    return MaterialApp(
      title: 'Starbuckgs App',
      theme: ThemeData(
         appBarTheme: const AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.light,
              statusBarBrightness: Brightness.light,
            ),
         ),
        primaryColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}

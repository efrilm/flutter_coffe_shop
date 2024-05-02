import 'package:coffe_shop/app/config_app.dart';
import 'package:coffe_shop/presentations/pages/splash/splash_view.dart';
import 'package:coffe_shop/presentations/resources/theme_app.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getApplicationTheme(),
      debugShowCheckedModeBanner: ConfigApp.isDevelopment,
      title: ConfigApp.appName,
      home: const SplashView(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:miabekinedoctor/utils/router/router.dart';
import 'package:miabekinedoctor/utils/themes/light.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: light(context),
      title: "Miabekine Doctor",
      debugShowCheckedModeBanner: false,
    );
  }
}

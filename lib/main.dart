import 'package:flutter/material.dart';
import 'package:untitled/screen/main_screen.dart';
import 'package:untitled/screen/splash_screen.dart';
import 'package:untitled/screen/sub_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/main': (context) => MainScreen(),
      },
      onGenerateRoute: (settings) {
if(settings.name == '/sub'){
  String message = settings.arguments as String;
  return MaterialPageRoute(builder: (context) {
return SubScreen(message:message,);
  },);
}
      },
    );
  }
}

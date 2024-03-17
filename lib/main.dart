import 'package:flutter/material.dart';
import 'package:todo_app/ui/onboarding/onboarding_page_view.dart';
import 'package:todo_app/ui/splash/splash.dart';
import 'package:todo_app/ui/welcome/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  const OnboardingPageView(),
    );
   }
 }

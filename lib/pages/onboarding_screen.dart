import 'package:crypto_bear/resources/app_colors.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              // stops: [0.4, 1],
              colors: [AppColors.paselGradient, AppColors.black])),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [],
        ),
      ),
    );
  }
}

import 'package:crypto_bear/components/navigation.dart';
import 'package:crypto_bear/resources/app_colors.dart';
import 'package:crypto_bear/resources/app_images.dart';
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
          colors: [
            Color(0xFF302F2F),
            AppColors.black,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                      height: 100,
                      width: 100,
                      child: Image(image: AppImages.appLogo)),
                  Container(
                    height: 100,
                    width: 242,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF727272),
                          Color(0xFFFFFFFF),
                        ],
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(90),
                        bottomLeft: Radius.circular(90),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                    height: 77, width: 70, child: Image(image: AppImages.starBig)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                            color: AppColors.white,
                            fontFamily: 'Poppins',
                            fontSize: 36,
                            fontWeight: FontWeight.w200),
                        children: <TextSpan>[
                          TextSpan(text: 'Crypto Bear,'),
                          TextSpan(
                            text: '\nThe most trusted \ncrypto currency '
                                '\nTrading App in \nrecent days',
                            style: TextStyle(
                                color: AppColors.white,
                                fontSize: 36,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: SizedBox(
                    height: 39,
                    width: 36,
                    child: Image(image: AppImages.starSmall)),
              ),
              SizedBox(
                  height: 160,
                  child: Image(image: AppImages.doubleLines)),
              const SizedBox(
                height: 18,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 39),
                child: Stack(
                  children: [
                    Container(
                      height: 62,
                      width: 62,
                      decoration: const BoxDecoration(
                          color: AppColors.gradientBlack, shape: BoxShape.circle),
                    ),
                    Positioned(
                      left: 7,
                      top: 7,
                      right: 7,
                      bottom: 7,
                      child: InkWell(
                        onTap: () {
                          Navigation.navigateToHomePage(context: context);
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                              color: AppColors.white, shape: BoxShape.circle),
                          child: const Icon(
                            Icons.chevron_right_rounded,
                            color: AppColors.black,
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

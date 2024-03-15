// quan li qua lai cac page
import 'package:flutter/material.dart';
import 'package:todo_app/ui/onboarding/onboarding_child_page.dart';
import 'package:todo_app/ultils.enums/onboarding_page_position.dart';
class OnboardingPageView extends StatefulWidget {
  const OnboardingPageView({super.key});

  @override
  State<OnboardingPageView> createState() => _OnboardingPageViewState();
}

class _OnboardingPageViewState extends State<OnboardingPageView> {
  final _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          // truyen vao cac widget con
          OnboardingChildPage(
            onboardingPagePosition: OnboardingPagePosition.page1,
            nextOnPressed: () { 
              _pageController.jumpToPage(1);
            },),
          OnboardingChildPage(
              onboardingPagePosition: OnboardingPagePosition.page2,
            nextOnPressed: () {
              _pageController.jumpToPage(2);
            },
          ),
          OnboardingChildPage(
              onboardingPagePosition: OnboardingPagePosition.page3,
            nextOnPressed: () {
                print("di den ma hinh ");
            },
          ),
        ],
      ),
    );
  }
}

import 'package:cyneox_test/helpers/constants/constants.dart';
import 'package:cyneox_test/helpers/utils/font_util.dart';
import 'package:cyneox_test/providers/onboarding_page_provider.dart';
import 'package:cyneox_test/uis/widgets/base_button.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:provider/provider.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<OnboardingPageProvider>(
      builder: (context, provider, child) => Scaffold(
        body: IntroductionScreen(
          dotsDecorator: DotsDecorator(
            color: grey600Color,
            activeColor: primaryColor,
            size: const Size(8, 8),
          ),
          pages: [
            PageViewModel(
              titleWidget: const SizedBox.shrink(),
              bodyWidget: const OnBoardingWidget1(),
              decoration: const PageDecoration(
                bodyAlignment: Alignment.center,
              ),
            ),
            PageViewModel(
              titleWidget: const SizedBox.shrink(),
              bodyWidget: const OnBoardingWidget2(),
              decoration: const PageDecoration(
                bodyAlignment: Alignment.center,
              ),
            ),
            PageViewModel(
              titleWidget: const SizedBox.shrink(),
              bodyWidget: const OnBoardingWidget3(),
              decoration: const PageDecoration(
                bodyAlignment: Alignment.center,
              ),
            ),
            PageViewModel(
              titleWidget: const SizedBox.shrink(),
              bodyWidget: OnBoardingWidget4(
                onPressed: provider.goToLoginPage,
              ),
              decoration: const PageDecoration(
                bodyAlignment: Alignment.center,
              ),
            ),
          ],
          showNextButton: false,
          showDoneButton: false,
        ),
      ),
    );
  }
}

class OnBoardingWidget1 extends StatelessWidget {
  const OnBoardingWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 65),
        Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1Dgldf0YWGo41dugx2VJX10gUuhVVnMekUg&s',
          height: 80,
        ),
        const SizedBox(height: 10),
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: get2XLFontSize(context),
              fontWeight: FontWeight.bold,
            ),
            children: const <TextSpan>[
              TextSpan(
                text: 'Cyneox',
                style: TextStyle(
                  color: primaryColor,
                ),
              ),
              TextSpan(
                text: ' Test 4 You',
                style: TextStyle(
                  color: whiteColor,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 5),
        Text(
          'Hello & welcome to the test, good luck!',
          style: TextStyle(
            fontSize: getRegularFontSize(context),
            color: greyColor,
          ),
        ),
      ],
    );
  }
}

class OnBoardingWidget2 extends StatelessWidget {
  const OnBoardingWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/onboarding_2.png',
          height: 150,
        ),
        const SizedBox(height: 10),
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: get2XLFontSize(context),
              fontWeight: FontWeight.bold,
            ),
            children: const <TextSpan>[
              TextSpan(
                text: 'Hassle-free',
                style: TextStyle(
                  color: primaryColor,
                ),
              ),
              TextSpan(
                text: ' Application',
                style: TextStyle(
                  color: whiteColor,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 5),
        Text(
          'Quick & easy application, lorem ipsum',
          style: TextStyle(
            fontSize: getRegularFontSize(context),
            color: greyColor,
          ),
        ),
      ],
    );
  }
}

class OnBoardingWidget3 extends StatelessWidget {
  const OnBoardingWidget3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/onboarding_3.png',
          height: 180,
        ),
        const SizedBox(height: 10),
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: get2XLFontSize(context),
              fontWeight: FontWeight.bold,
            ),
            children: const <TextSpan>[
              TextSpan(
                text: 'Fantastic',
                style: TextStyle(
                  color: primaryColor,
                ),
              ),
              TextSpan(
                text: ' Review',
                style: TextStyle(
                  color: whiteColor,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 5),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: TextStyle(
              fontSize: getRegularFontSize(context),
              color: greyColor,
            ),
            children: <TextSpan>[
              TextSpan(
                text: '5',
                style: TextStyle(
                  fontSize: get2XLFontSize(context),
                  color: greyColor,
                ),
              ),
              const TextSpan(
                text:
                    '-stars customer rating, experience\nservice like no other',
                style: TextStyle(
                  color: greyColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class OnBoardingWidget4 extends StatelessWidget {
  const OnBoardingWidget4({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 100),
        Image.asset(
          'assets/onboarding_4.png',
          height: 180,
        ),
        const SizedBox(height: 10),
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: get2XLFontSize(context),
              fontWeight: FontWeight.bold,
            ),
            children: const <TextSpan>[
              TextSpan(
                text: 'The Cyneox',
                style: TextStyle(
                  color: primaryColor,
                ),
              ),
              TextSpan(
                text: ' Magic',
                style: TextStyle(
                  color: whiteColor,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 5),
        Text(
          'We transforms concepts into platforms\nwhich vividly display your stories!',
          style: TextStyle(
            fontSize: getRegularFontSize(context),
            color: greyColor,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 40),
        SizedBox(
          height: 50,
          width: MediaQuery.of(context).size.width * 0.6,
          child: BaseButton(
            onPressed: onPressed,
            child: Text(
              'Get Started!',
              style: TextStyle(
                fontSize: getXLFontSize(context),
                color: whiteColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

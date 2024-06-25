import 'package:cyneox_test/app/app.locator.dart';
import 'package:cyneox_test/app/app.router.dart';
import 'package:cyneox_test/services/navigation_service.dart';
import 'package:flutter/material.dart';

class OnboardingPageProvider extends ChangeNotifier {
  final _navService = locator<NavigationService>();

  void goToLoginPage() => _navService.pushNamedAndRemoveUntil(Routes.loginPage);
}

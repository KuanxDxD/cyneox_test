import 'package:cyneox_test/app/app.locator.dart';
import 'package:cyneox_test/app/app.router.dart';
import 'package:cyneox_test/models/input_value.dart';
import 'package:cyneox_test/services/navigation_service.dart';
import 'package:flutter/material.dart';

class LoginPageProvider extends ChangeNotifier {
  final _navService = locator<NavigationService>();

  final TextEditingController phoneNoController = TextEditingController();
  final TextEditingController nricController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  List<InputValue> phoneCodes = [
    const InputValue(id: 1, name: '+60', value: '+60'),
    const InputValue(id: 2, name: '+63', value: '+63'),
    const InputValue(id: 3, name: '+65', value: '+65'),
  ];
  InputValue? phoneCode = const InputValue(id: 1, name: '+60', value: '+60');
  void setPhoneCode(InputValue? value) {
    phoneCode = value;
    notifyListeners();
  }

  void login() => _navService.pushNamedAndRemoveUntil(Routes.homePage);
}

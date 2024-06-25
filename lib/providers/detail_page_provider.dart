import 'package:cyneox_test/app/app.locator.dart';
import 'package:cyneox_test/services/navigation_service.dart';
import 'package:flutter/material.dart';

class DetailPageProvider extends ChangeNotifier {
  final _navService = locator<NavigationService>();

  void pop() => _navService.pop();
}

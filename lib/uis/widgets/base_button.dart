import 'package:cyneox_test/helpers/constants/constants.dart';
import 'package:flutter/material.dart';

class BaseButton extends StatelessWidget {
  const BaseButton({
    super.key,
    required this.onPressed,
    this.backgroundColor = primaryColor,
    this.child,
  });

  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        backgroundColor: backgroundColor,
      ),
      child: child,
    );
  }
}

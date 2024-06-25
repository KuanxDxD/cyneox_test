import 'package:cyneox_test/helpers/constants/constants.dart';
import 'package:cyneox_test/helpers/utils/font_util.dart';
import 'package:flutter/material.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: get2XLFontSize(context),
              fontWeight: FontWeight.bold,
            ),
            children: const <TextSpan>[
              TextSpan(
                text: 'Thank',
                style: TextStyle(
                  color: primaryColor,
                ),
              ),
              TextSpan(
                text: ' You',
                style: TextStyle(
                  color: whiteColor,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 5),
        Text(
          'Thank you for spending your time\non the test.',
          style: TextStyle(
            fontSize: getRegularFontSize(context),
            color: greyColor,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

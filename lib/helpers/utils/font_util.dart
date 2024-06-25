import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

double getHeaderXLFontSize(BuildContext context) {
  return getValueForScreenType<double>(
    context: context,
    mobile: 35,
    tablet: 50,
    desktop: 60,
  );
}

double getHeaderFontSize(BuildContext context) {
  return getValueForScreenType<double>(
    context: context,
    mobile: 30,
    tablet: 36,
    desktop: 40,
  );
}

double getSubHeaderXLFontSize(BuildContext context) {
  return getValueForScreenType<double>(
    context: context,
    mobile: 24,
    tablet: 28,
    desktop: 30,
  );
}

double getSubHeaderFontSize(BuildContext context) {
  return getValueForScreenType<double>(
    context: context,
    mobile: 22,
    tablet: 24,
    desktop: 26,
  );
}

double get2XLFontSize(BuildContext context) {
  return getValueForScreenType<double>(
    context: context,
    mobile: 18,
    tablet: 19,
    desktop: 20,
  );
}

double getXLFontSize(BuildContext context) {
  return getValueForScreenType<double>(
    context: context,
    mobile: 17,
    tablet: 18,
    desktop: 19,
  );
}

double getLargeFontSize(BuildContext context) {
  return getValueForScreenType<double>(
    context: context,
    mobile: 16,
    tablet: 17,
    desktop: 18,
  );
}

double getRegularFontSize(BuildContext context) {
  return getValueForScreenType<double>(
    context: context,
    mobile: 14,
    tablet: 15,
    desktop: 16,
  );
}

double getSmallFontSize(BuildContext context) {
  return getValueForScreenType<double>(
    context: context,
    mobile: 12,
    tablet: 13,
    desktop: 14,
  );
}

double getXSmallFontSize(BuildContext context) {
  return getValueForScreenType<double>(
    context: context,
    mobile: 10,
    tablet: 11,
    desktop: 12,
  );
}

double get2XSmallFontSize(BuildContext context) {
  return getValueForScreenType<double>(
    context: context,
    mobile: 8,
    tablet: 9,
    desktop: 10,
  );
}

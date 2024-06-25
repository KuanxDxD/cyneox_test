import 'package:cyneox_test/helpers/constants/constants.dart';
import 'package:cyneox_test/helpers/utils/font_util.dart';
import 'package:cyneox_test/models/input_value.dart';
import 'package:flutter/material.dart';

class BaseDropDown extends StatelessWidget {
  const BaseDropDown({
    super.key,
    this.initialValue,
    required this.inputs,
    this.enabled = true,
    required this.onChanged,
    this.textColor = whiteColor,
  });

  final InputValue? initialValue;
  final List<InputValue> inputs;
  final bool? enabled;
  final void Function(InputValue?) onChanged;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      iconSize: 0,
      isExpanded: true,
      menuMaxHeight: 300,
      dropdownColor: blackColor,
      value: initialValue,
      items: inputs
          .map<DropdownMenuItem<InputValue>>(
            (InputValue value) => DropdownMenuItem(
              value: value,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  children: [
                    Text(
                      value.name,
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: get2XLFontSize(context),
                        fontWeight: FontWeight.w500,
                        color: textColor,
                      ),
                    ),
                    Icon(
                      Icons.arrow_drop_down_rounded,
                      color: textColor,
                    )
                  ],
                ),
              ),
            ),
          )
          .toList(),
      onChanged: enabled == true ? onChanged : null,
      underline: const SizedBox.shrink(),
    );
  }
}

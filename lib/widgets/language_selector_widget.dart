import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xfunding/controller/language_selector_controller.dart';
import 'package:xfunding/utils/custom_color.dart';
import 'package:xfunding/utils/custom_style.dart';
import 'package:xfunding/utils/dimsensions.dart';

class LanguageSelectorWidget extends StatelessWidget {
  LanguageSelectorWidget({super.key});
  final _controller = Get.put(LanguageSelectorController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.defaultPaddingSize),
      child: DropdownButtonHideUnderline(
          child: Obx(
        () => DropdownButton(
          dropdownColor: CustomColor.secondaryColor,
          icon: const Icon(
            Icons.arrow_drop_down,
            color: CustomColor.whiteColor,
          ),
          isExpanded: true,
          style: CustomStyler.textStyler,
          value: _controller.selected.value,
          items: _controller.listItem.map((valueItem) {
            return DropdownMenuItem(
              value: valueItem,
              child: Text(valueItem, style: CustomStyler.languageTextStyle),
            );
          }).toList(),
          onChanged: (newValue) {
            _controller.setSelected(newValue.toString());
          },
        ),
      )),
    );
  }
}

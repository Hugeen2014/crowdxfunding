import 'package:flutter/material.dart';
import 'package:xfunding/utils/custom_color.dart';
import 'package:xfunding/utils/custom_style.dart';
import 'package:xfunding/utils/dimsensions.dart';
import 'package:xfunding/utils/strings.dart';

class PasswordInputTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType? keyboardType;
  final bool? readOnly;

  const PasswordInputTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.keyboardType,
    this.readOnly,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PasswordInputTextFieldState createState() => _PasswordInputTextFieldState();
}

class _PasswordInputTextFieldState extends State<PasswordInputTextField> {
  bool isVisibility = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: false,
      style: CustomStyler.textFieldLableStyle,
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      validator: (String? value) {
        if (value!.isEmpty) {
          return null;
        } else {
          return Strings.pleaseFillOutTheField;
        }
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dimensions.radius * 2),
          borderSide: const BorderSide(
              color: CustomColor.whiteColor, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dimensions.radius * 2),
          borderSide: const BorderSide(
              color: CustomColor.whiteColor, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dimensions.radius * 2),
          borderSide: const BorderSide(
              color: CustomColor.whiteColor, width: 1),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dimensions.radius * 2),
          borderSide: const BorderSide(color: Colors.red, width: 1),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dimensions.radius * 2),
          borderSide: const BorderSide(color: Colors.red, width: 1),
        ),
        filled: true,
        fillColor: CustomColor.inputBackgroundColor,
        contentPadding: EdgeInsets.symmetric(horizontal: Dimensions.defaultPaddingSize, vertical: Dimensions.defaultPaddingSize),
        hintText: widget.hintText,
        prefixIcon: const Icon(Icons.lock, color: CustomColor.whiteColor,),
        hintStyle: CustomStyler.passwordHintTextStyle,
        suffixIcon: IconButton(
          icon: Icon(
            isVisibility ? Icons.visibility_off : Icons.visibility,
          ),
          color: CustomColor.gray,
          onPressed: () {
            setState(() {
              isVisibility = !isVisibility;
            });
          },
        ),
      ),
      obscureText: isVisibility,
    );
  }
}

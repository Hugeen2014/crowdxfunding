import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AddCardController extends GetxController{
  final formKey = GlobalKey<FormState>();
  final nameOfCardController = TextEditingController();
  final cardNumberController = TextEditingController();
  final expiryDateController = TextEditingController();
  final cvcController = TextEditingController();
}
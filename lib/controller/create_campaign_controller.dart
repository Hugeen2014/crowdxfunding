import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CreateCampaignController extends GetxController{
  final formKey = GlobalKey<FormState>();
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  final amountController = TextEditingController();
  final cityController = TextEditingController();
  final streetController = TextEditingController();
  final codeController = TextEditingController();
  final dateController = TextEditingController();
  final countryController = TextEditingController();
}
import 'package:get/get.dart';
import 'package:xfunding/utils/strings.dart';

class LanguageSelectorController extends GetxController{

  final selected = Strings.selectLanguage.obs;

  void setSelected(String value){
    selected.value = value;
  }

  String country = Strings.selectLanguage;

  final List listItem = [
    Strings.selectLanguage,
    'Arabic',
    'Bangla',
    'English',
    'German'
  ];




}
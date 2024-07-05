import 'package:get/get.dart';

class ChangeLanguageController extends GetxController{

  var selectedLanguage = "".obs;


  onChangeLanguage(var language){
    selectedLanguage.value = language;
  }
}
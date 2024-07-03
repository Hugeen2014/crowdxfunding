import 'package:get/get.dart';
import 'package:xfunding/utils/strings.dart';

class CountrySelectorController extends GetxController{

  final selected = Strings.selectCountry.obs;

  void setSelected(String value){
    selected.value = value;
  }

  String country = Strings.selectCountry;

  final List listItem = [
    Strings.selectCountry,
    'Bangladesh',
    'USA',
    'Germany'
  ];




}
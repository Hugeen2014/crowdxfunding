import 'package:get/get.dart';

class TransactionController extends GetxController{


  var selectedPaymentMethod = "".obs;


  onChangeLanguage(var language){
    selectedPaymentMethod.value = language;
  }

}
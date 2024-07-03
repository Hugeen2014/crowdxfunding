import 'package:get/get.dart';

class InputImageController extends GetxController{

  var isCampaignPicPathSet = false.obs;
  var campaignPicPath = "".obs;

  void setCampaignImagePath(String path){
    campaignPicPath.value = path;
    isCampaignPicPathSet.value = true;
  }


}
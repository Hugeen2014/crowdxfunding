import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:xfunding/controller/input_image_controller.dart';
import 'package:xfunding/utils/custom_color.dart';
import 'package:xfunding/utils/dimsensions.dart';
import 'package:xfunding/utils/size.dart';
import 'package:xfunding/utils/strings.dart';



// ignore: must_be_immutable
class InputPhotosWidget extends StatelessWidget {
  InputPhotosWidget({Key? key}) : super(key: key);

  final _controller = Get.put(InputImageController());

  File? pickedFile;

  ImagePicker imagePicker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            context: context, builder: (context) => _bottomSheet(context));
      },
      child: Obx(()=> Container(
        width: Dimensions.widthSize * 5.w,
        height: Dimensions.heightSize * 7.h,
        margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.5),
        decoration: BoxDecoration(
            color: CustomColor.inputBackgroundColor,
            borderRadius: BorderRadius.circular(15.r),
            image: DecorationImage(
              image: _controller.isCampaignPicPathSet.value == true ? FileImage(File(_controller.campaignPicPath.value)) as ImageProvider : const AssetImage(Strings.campaignImage),
              fit: BoxFit.fill,
            ),
            border: Border.all(color: CustomColor.whiteColor, width: 1)),
        child: const Icon(
          Icons.add_circle,
          color: CustomColor.whiteColor,
        ),
      ),
      ),
    );
  }

  _bottomSheet(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100.h,
      margin: EdgeInsets.all(Dimensions.marginSize * 0.5),
      child: Row(
        mainAxisAlignment: mainCenter,
        children: [
          Padding(
            padding: EdgeInsets.all(Dimensions.defaultPaddingSize),
            child: IconButton(
                onPressed: () {
                  takePhoto(ImageSource.gallery);
                },
                icon: const Icon(
                  Icons.image,
                  color: CustomColor.primaryColor,
                  size: 50,
                )),
          ),
          Padding(
            padding: EdgeInsets.all(Dimensions.defaultPaddingSize),
            child: IconButton(
                onPressed: () {
                  takePhoto(ImageSource.camera);

                },
                icon: const Icon(
                  Icons.camera,
                  color: CustomColor.primaryColor,
                  size: 50,
                )),
          ),
        ],
      ),
    );
  }


  void takePhoto(ImageSource source) async {
    final pickedImage = await imagePicker.pickImage(source: source, imageQuality: 100);

    pickedFile = File(pickedImage!.path);
    _controller.setCampaignImagePath(pickedFile!.path);
  }
}









import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:xfunding/controller/create_campaign_controller.dart';
import 'package:xfunding/routes/routes.dart';
import 'package:xfunding/utils/custom_color.dart';
import 'package:xfunding/utils/dimsensions.dart';
import 'package:xfunding/utils/size.dart';
import 'package:xfunding/utils/strings.dart';
import 'package:xfunding/widgets/buttons/back_button_widget.dart';
import 'package:xfunding/widgets/buttons/primary_button_widget.dart';
import 'package:xfunding/widgets/categories_selector_widget.dart';
import 'package:xfunding/widgets/country_code_picker_widget.dart';
import 'package:xfunding/widgets/datetime.dart';
import 'package:xfunding/widgets/input_photos_widget.dart';
import 'package:xfunding/widgets/inputs/description_input_text_field_widget.dart';
import 'package:xfunding/widgets/inputs/input_text_field.dart';
import 'package:xfunding/widgets/labels/text_labels_widget.dart';

class CreateCampaignScreen extends StatelessWidget {
  CreateCampaignScreen({super.key});
  final _controller = Get.put(CreateCampaignController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryBackgroundColor,
      appBar: AppBar(
        title: Text(
          Strings.createCampaign,
          style: const TextStyle(color: CustomColor.whiteColor),
        ),
        leading: const BackButtonWidget(),
        backgroundColor: CustomColor.primaryBackgroundColor,
        elevation: 0,
      ),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return ListView(
      children: [
        _categoriesTitleWidget(context),
        _categoriesWidget(context),
        _titleWidget(context),
        _descriptionWidget(context),
        _photosWidget(context),
        _targetAmountWidget(context),
        _dueDateWidget(context),
        _locationWidget(context),
        _proceedButtonWidget(context),
        addVerticalSpace(20.h),
      ],
    );
  }

  _categoriesTitleWidget(BuildContext context) {
    return TextLabelsWidget(
      textLabels: Strings.selectCategories,
    );
  }

  _categoriesWidget(BuildContext context) {
    return const CategoriesSelectorWidget();
  }

  _titleWidget(BuildContext context) {
    return Column(
      mainAxisAlignment: mainStart,
      crossAxisAlignment: crossStart,
      children: [
        TextLabelsWidget(
          textLabels: Strings.title,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.5),
          child: DescriptionInputTextFieldWidget(
            hintText: Strings.writeHere,
            hintTextColor: CustomColor.whiteColor,
            backgroundColor: CustomColor.inputBackgroundColor,
            controller: _controller.titleController,
          ),
        ),
      ],
    );
  }

  _descriptionWidget(BuildContext context) {
    return Column(
      mainAxisAlignment: mainStart,
      crossAxisAlignment: crossStart,
      children: [
        TextLabelsWidget(
          textLabels: Strings.description,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.5),
          child: DescriptionInputTextFieldWidget(
            hintText: Strings.writeHere,
            maxLine: 4,
            hintTextColor: CustomColor.whiteColor,
            backgroundColor: CustomColor.inputBackgroundColor,
            controller: _controller.descriptionController,
          ),
        ),
      ],
    );
  }

  _photosWidget(BuildContext context) {
    return Column(
      mainAxisAlignment: mainStart,
      crossAxisAlignment: crossStart,
      children: [
        TextLabelsWidget(
          textLabels: Strings.photos,
        ),
        InputPhotosWidget()
      ],
    );
  }

  _targetAmountWidget(BuildContext context) {
    return Column(
      mainAxisAlignment: mainStart,
      crossAxisAlignment: crossStart,
      children: [
        TextLabelsWidget(
          textLabels: Strings.targetAmount,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.5),
          child: InputTextField(
            hintText: Strings.amount,
            iconData: Icons.attach_money,
            hintTextColor: CustomColor.whiteColor,
            backgroundColor: CustomColor.inputBackgroundColor,
            controller: _controller.amountController,
          ),
        ),
      ],
    );
  }

  _dueDateWidget(BuildContext context) {
    return Column(
      mainAxisAlignment: mainStart,
      crossAxisAlignment: crossStart,
      children: [
        TextLabelsWidget(
          textLabels: Strings.dueDate,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.5),
          child: const DateTimeWidget(),
        ),
      ],
    );
  }

  _locationWidget(BuildContext context) {
    return Column(
      mainAxisAlignment: mainStart,
      crossAxisAlignment: crossStart,
      children: [
        TextLabelsWidget(
          textLabels: Strings.location,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.5),
          child: Row(
            mainAxisAlignment: mainSpaceBet,
            children: [
              const Flexible(
                child: CountryCodePickerWidget(),
              ),
              addHorizontalSpace(10.w),
              Flexible(
                child: InputTextField(
                  hintText: Strings.city,
                  iconData: Icons.location_city,
                  hintTextColor: CustomColor.whiteColor,
                  backgroundColor: CustomColor.inputBackgroundColor,
                  controller: _controller.cityController,
                ),
              ),
            ],
          ),
        ),
        addVerticalSpace(20.h),
        Container(
          margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.5),
          child: Row(
            mainAxisAlignment: mainSpaceBet,
            children: [
              Flexible(
                child: InputTextField(
                  hintText: Strings.street,
                  iconData: FontAwesomeIcons.streetView,
                  hintTextColor: CustomColor.whiteColor,
                  backgroundColor: CustomColor.inputBackgroundColor,
                  controller: _controller.streetController,
                ),
              ),
              addHorizontalSpace(10.w),
              Flexible(
                child: InputTextField(
                  hintText: Strings.code,
                  iconData: Icons.vpn_key,
                  hintTextColor: CustomColor.whiteColor,
                  backgroundColor: CustomColor.inputBackgroundColor,
                  controller: _controller.cityController,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  _proceedButtonWidget(BuildContext context) {
    return PrimaryButtonWidget(
      title: Strings.proceed,
      onPressed: () {
        Get.toNamed(Routes.waitForApprovalScreen);
      },
      borderColor: CustomColor.primaryColor,
      backgroundColor: CustomColor.primaryColor,
      textColor: CustomColor.whiteColor,
    );
  }
}

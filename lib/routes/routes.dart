import 'package:get/get.dart';
import 'package:xfunding/binding/splash_binding.dart';
import 'package:xfunding/views/auth/email_verification_screen.dart';
import 'package:xfunding/views/screens/about_us_screen.dart';
import 'package:xfunding/views/screens/change_language_screen.dart';
import 'package:xfunding/views/screens/change_password_screen.dart';
import 'package:xfunding/views/screens/edit_profile_screen.dart';
import 'package:xfunding/views/screens/add_card_screen.dart';
import 'package:xfunding/views/screens/church_screen.dart';
import 'package:xfunding/views/screens/create_campaign_screen.dart';
import 'package:xfunding/views/screens/deposit_screen.dart';
import 'package:xfunding/views/screens/disaster_screen.dart';
import 'package:xfunding/views/screens/donate_now_screen.dart';
import 'package:xfunding/views/screens/donate_review_screen.dart';
import 'package:xfunding/views/screens/donate_screen.dart';
import 'package:xfunding/views/screens/donate_success_screen.dart';
import 'package:xfunding/views/screens/donation_koisks_screen.dart';
import 'package:xfunding/views/screens/education_screen.dart';
import 'package:xfunding/views/screens/emil_verification_congratulations_screens.dart';
import 'package:xfunding/views/auth/otp_verification_screen.dart';
import 'package:xfunding/views/screens/funeral_screen.dart';
import 'package:xfunding/views/screens/help_center_screen.dart';
import 'package:xfunding/views/screens/live_chat_screen.dart';
import 'package:xfunding/views/screens/medical_screen.dart';
import 'package:xfunding/views/screens/my_card_screen.dart';
import 'package:xfunding/views/screens/my_donations_screen.dart';
import 'package:xfunding/views/screens/notification_screen.dart';
import 'package:xfunding/views/screens/popular_fundraiser_screen.dart';
import 'package:xfunding/views/screens/reset_password_congratulations_screen.dart';
import 'package:xfunding/views/screens/reset_password_screen.dart';
import 'package:xfunding/views/screens/sign_in_screen.dart';
import 'package:xfunding/views/screens/sign_up_screen.dart';
import 'package:xfunding/views/screens/onboard_screen.dart';
import 'package:xfunding/views/screens/splash_screen.dart';
import 'package:xfunding/views/screens/urgent_fundraising_screen.dart';
import 'package:xfunding/views/screens/wait_for_approval_screen.dart';
import 'package:xfunding/views/screens/welcome_screen.dart';
import 'package:xfunding/views/screens/withdraw_screen.dart';
import 'package:xfunding/widgets/bottom_navigation_widget.dart';

class Routes {
  static const String splashScreen = '/splashScreen';
  static const String onboardScreen = '/onboardScreen';
  static const String welcomeScreen = '/welcomeScreen';
  static const String signInScreen = '/signInScreen';
  static const String signUpScreen = '/signUpScreen';
  static const String otpVerificationScreen = '/otpVerificationScreen';
  static const String emailVerificationScreen = '/emailVerificationScreen';
  static const String resetPasswordScreen = '/resetPasswordScreen';
  static const String bottomNavigation = '/bottomNavigation';
  static const String resetPasswordCongratulationsScreen =
      '/resetPasswordCongratulationsScreen';
  static const String emailVerificationCongratulationsScreen =
      '/emailVerificationCongratulationsScreen';
  static const String notificationScreen = '/notificationScreen';
  static const String donateNowScreen = '/donateNowScreen';
  static const String donateScreen = '/donateScreen';
  static const String donateReviewScreen = '/donateReviewScreen';
  static const String donateSuccessScreen = '/donateSuccessScreen';
  static const String medicalScreen = '/medicalScreen';
  static const String educationScreen = '/educationScreen';
  static const String churchScreen = '/churchScreen';
  static const String disasterScreen = '/disasterScreen';
  static const String urgentFundraisingScreen = '/urgentFundraisingScreen';
  static const String funeralScreen = '/funeralScreen';
  static const String popularFundraiserScreen = '/popularFundraiserScreen';
  static const String donationKiosksScreen = '/donationKiosksScreen';
  static const String createCampaignScreen = '/createCampaignScreen';
  static const String waitForApprovalScreen = '/waitForApprovalScreen';
  static const String depositScreen = '/depositScreen';
  static const String withdrawScreen = '/withdrawScreen';
  static const String editProfileScreen = '/editProfileScreen';
  static const String myCardScreen = '/myCardScreen';
  static const String addCardScreen = '/addCardScreen';
  static const String myDonationsScreen = '/myDonationsScreen';
  static const String changePasswordScreen = '/changePasswordScreen';
  static const String changeLanguageScreen = '/changeLanguageScreen';
  static const String helpCenterScreen = '/helpCenterScreen';
  static const String liveChatScreen = '/liveChatScreen';
  static const String aboutUsScreen = '/aboutUsScreen';


  static var list = [
    GetPage(
      name: splashScreen,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: onboardScreen,
      page: () => OnboardScreen(),
    ),
    GetPage(
      name: welcomeScreen,
      page: () => const WelcomeScreen(),
    ),
    GetPage(
      name: signInScreen,
      page: () => SignInScreen(),
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
    ),
    GetPage(
      name: otpVerificationScreen,
      page: () => const OtpVerificationScreen(),
    ),
    GetPage(
      name: resetPasswordScreen,
      page: () => ResetPasswordScreen(),
    ),
    GetPage(
      name: resetPasswordCongratulationsScreen,
      page: () => const ResetPasswordCongratulationsScreen(),
    ),
    GetPage(
      name: emailVerificationScreen,
      page: () => const EmailVerificationScreen(),
    ),
    GetPage(
      name: emailVerificationCongratulationsScreen,
      page: () => const EmailVerificationCongratulationsScreen(),
    ),
    GetPage(
      name: bottomNavigation,
      page: () => BottomNavigationWidget(),
    ),
    GetPage(
      name: notificationScreen,
      page: () => const NotificationScreen(),
    ),
    GetPage(
      name: donateNowScreen,
      page: () => const DonateNowScreen(),
    ),
    GetPage(
      name: donateScreen,
      page: () => DonateScreen(),
    ),
    GetPage(
      name: donateReviewScreen,
      page: () => const DonateReviewScreen(),
    ),
    GetPage(
      name: donateSuccessScreen,
      page: () => const DonateSuccessScreen(),
    ),
    GetPage(
      name: medicalScreen,
      page: () => const MedicalScreen(),
    ),
    GetPage(
      name: educationScreen,
      page: () => const EducationScreen(),
    ),
    GetPage(
      name: churchScreen,
      page: () => const ChurchScreen(),
    ),
    GetPage(
      name: disasterScreen,
      page: () => const DisasterScreen(),
    ),
    GetPage(
      name: urgentFundraisingScreen,
      page: () => const UrgentFundraisingScreen(),
    ),
    GetPage(
      name: funeralScreen,
      page: () => const FuneralScreen(),
    ),
    GetPage(
      name: popularFundraiserScreen,
      page: () => const PopularFundraiserScreen(),
    ),
    GetPage(
      name: donationKiosksScreen,
      page: () => const DonationKiosksScreen(),
    ),
    GetPage(
      name: createCampaignScreen,
      page: () => CreateCampaignScreen(),
    ),
    GetPage(
      name: waitForApprovalScreen,
      page: () => const WaitForApprovalScreen(),
    ),
    GetPage(
      name: depositScreen,
      page: () => DepositScreen(),
    ),
    GetPage(
      name: withdrawScreen,
      page: () => WithdrawScreen(),
    ),
    GetPage(
      name: editProfileScreen,
      page: () => EditProfileScreen(),
    ),
    GetPage(
      name: myCardScreen,
      page: () => const MyCardScreen(),
    ),
    GetPage(
      name: addCardScreen,
      page: () => AddCardScreen(),
    ),
    GetPage(
      name: myDonationsScreen,
      page: () => const MyDonationsScreen(),
    ),GetPage(
      name: changePasswordScreen,
      page: () => ChangePasswordScreen(),
    ),GetPage(
      name: changeLanguageScreen,
      page: () => ChangeLanguageScreen(),
    ),GetPage(
      name: helpCenterScreen,
      page: () => const HelpCenterScreen(),
    ),GetPage(
      name: aboutUsScreen,
      page: () => const AboutUsScreen(),
    ),GetPage(
      name: liveChatScreen,
      page: () => const LiveChatScreen(),
    ),
  ];
}

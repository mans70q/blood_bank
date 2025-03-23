import 'package:blood_bank/core/constant/strings.dart';
import 'package:blood_bank/features/auth/presentation/screen/register_screen.dart';
import 'package:blood_bank/features/onboarding/presentation/screen/onboarding_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'features/auth/presentation/screen/forget_password.dart';
import 'features/auth/presentation/screen/login_screen.dart';
import 'features/auth/presentation/screen/reset_password.dart';
import 'features/home/presentation/screen/layout_screen.dart';

List<GetPage<dynamic>>? getPages = [
  //====================== auth ======================
  GetPage(name: '/', page: () => const OnBoardingScreen()),
  GetPage(name: AppStrings.loginRoute, page: () => const LoginScreen()),
  GetPage(name: AppStrings.registerRoute, page: () => const RegisterScreen()),
  GetPage(
    name: AppStrings.forgetPasswordRoute,
    page: () => const ForgetPassword(),
  ),
  GetPage(
    name: AppStrings.resetPasswordRoute,
    page: () => const ResetPassword(),
  ),
  //====================== home ======================
  GetPage(name: AppStrings.homeRoute, page: () => const LayoutScreen()),
];

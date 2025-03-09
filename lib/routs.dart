import 'package:blood_bank/core/constant/strings.dart';
import 'package:blood_bank/features/onboarding/presentation/screen/onboarding_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'features/auth/presentation/login_screen.dart';

List<GetPage<dynamic>>? getPages = [
  GetPage(name: '/', page: () => const OnBoardingScreen()),
  GetPage(name: AppStrings.loginRoute, page: () => const LoginScreen()),
];

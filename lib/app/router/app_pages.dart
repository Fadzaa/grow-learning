import 'package:get/get.dart';
import 'package:grow_learning/app/pages/features/ai_page/ai_page_binding.dart';
import 'package:grow_learning/app/pages/features/ai_page/ai_page_view.dart';

import 'package:grow_learning/app/pages/features/leaderboard_page/leader_page_binding.dart';
import 'package:grow_learning/app/pages/features/leaderboard_page/leader_page_view.dart';
import 'package:grow_learning/app/pages/features/statistic_page/statistic_page_binding.dart';
import 'package:grow_learning/app/pages/features/statistic_page/statistic_page_view.dart';

import '../pages/features/home_page/home_page_binding.dart';
import '../pages/features/home_page/home_page_view.dart';

import '../pages/initial_pages/login_page/login_page_binding.dart';
import '../pages/initial_pages/login_page/login_page_view.dart';
import '../pages/initial_pages/onboarding_page/onboarding_page_binding.dart';
import '../pages/initial_pages/onboarding_page/onboarding_page_view.dart';
import '../pages/initial_pages/otp_verification_page/otp_page_binding.dart';
import '../pages/initial_pages/otp_verification_page/otp_page_view.dart';
import '../pages/initial_pages/register_page/register_page_binding.dart';
import '../pages/initial_pages/register_page/register_page_view.dart';
import '../pages/initial_pages/splash_screen/splash_page_binding.dart';
import '../pages/initial_pages/splash_screen/splash_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();


  static const INITIAL = Routes.STATISTIK_PAGE;


  static final routes = [
    GetPage(
      name: _Paths.AI_PAGE,
      page: () => AiPageView(),
      binding: AiPageBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.STATISTIK_PAGE,
      page: () => StatisticPage(),
      binding: StatisticPageBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.HOME_PAGE,
      page: () => HomePageView(),
      binding: HomePageBinding(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: _Paths.SPLASH_PAGE,
      page: () => const SplashPageView(),
      binding: SplashPageBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.ONBOARDING_PAGE,
      page: () => const OnboardingPageView(),
      binding: OnboardingPageBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.LEADERBOARD_PAGE,
      page: () => const Leaderboard(),
      binding: LeaderPageBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.REGISTER_PAGE,
      page: () => const RegisterPageView(),
      binding: RegisterPageBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.LOGIN_PAGE,
      page: () => const LoginPageView(),
      binding: LoginPageBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.OTP_VERIFICATION_PAGE,
      page: () => const OtpPageView(),
      binding: OtpPageBinding(),
      transition: Transition.noTransition,
    ),
  ];
}
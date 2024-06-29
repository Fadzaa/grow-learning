import 'package:get/get.dart';
import 'package:grow_learning/app/pages/features/friends_page/friends_page_binding.dart';
import 'package:grow_learning/app/pages/features/friends_page/friends_page_view.dart';


import 'package:grow_learning/app/pages/features/profile_page/profile_page_binding.dart';
import 'package:grow_learning/app/pages/features/profile_page/profile_page_view.dart';

import 'package:grow_learning/app/pages/features/leaderboard_page/leader_page_binding.dart';
import 'package:grow_learning/app/pages/features/leaderboard_page/leader_page_view.dart';

import '../pages/features/activity_done_page/activity_done_page_binding.dart';
import '../pages/features/activity_done_page/activity_done_page_view.dart';
import '../pages/features/list_activity_page/list_activity_binding.dart';
import '../pages/features/list_activity_page/list_activity_page.dart';
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

  static const INITIAL = Routes.PROFILE_PAGE;

  static final routes = [
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
    GetPage(
      name: _Paths.PROFILE_PAGE,
      page: () =>  ProfilePageView(),
      binding: ProfilePageBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.LIST_ACTIVITY_PAGE,
      page: () => ListActivityView(),
      binding: ListActivityBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.ACTIVITY_DONE_PAGE,
      page: () => const ActivityDonePageView(),
      binding: ActivityDonePageBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.FRIENDS_PAGE,
      page: () =>  FriendsPageView(),
      binding: FriendsPageBinding(),
      transition: Transition.noTransition,
    ),
  ];
}
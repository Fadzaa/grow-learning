part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const SPLASH_PAGE = _Paths.SPLASH_PAGE;
  static const HOME_PAGE = _Paths.HOME_PAGE;
  static const AI_PAGE = _Paths.AI_PAGE;
  static const ONBOARDING_PAGE = _Paths.ONBOARDING_PAGE;
  static const LEADERBOARD_PAGE = _Paths.LEADERBOARD_PAGE;
  static const LOGIN_PAGE = _Paths.LOGIN_PAGE;
  static const REGISTER_PAGE = _Paths.REGISTER_PAGE;
  static const OTP_VERIFICATION_PAGE = _Paths.OTP_VERIFICATION_PAGE;
}

abstract class _Paths {
  _Paths._();
  static const SPLASH_PAGE = '/';
  static const HOME_PAGE = '/home-page';
  static const AI_PAGE = '/ai-page';
  static const ONBOARDING_PAGE = '/onboarding-page';
  static const LEADERBOARD_PAGE = '/leaderboard-page';
  static const LOGIN_PAGE = '/login-page';
  static const REGISTER_PAGE = '/register-page';
  static const OTP_VERIFICATION_PAGE = '/otp-page';
}
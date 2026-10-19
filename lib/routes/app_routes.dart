import 'package:flutter/material.dart';
import '../models/tour_package.dart';
import '../screens/booking_screen.dart';
import '../screens/detail_screen.dart';
import '../screens/home_screen.dart';
import '../screens/not_found_screen.dart';
import '../screens/splash_screen.dart';

/// Konfigurasi rute dan navigasi aplikasi NusaTravel
class AppRoutes {
  // Nama-nama route konstan
  static const String splash = '/';
  static const String home = '/home';
  static const String detail = '/detail';
  static const String booking = '/booking';
  static const String notFound = '/not-found';

  /// Rute statis dasar yang tidak memerlukan passing arguments wajib
  static Map<String, WidgetBuilder> get routes => {
        splash: (context) => const SplashScreen(),
        home: (context) => const HomeScreen(),
        notFound: (context) => const NotFoundScreen(),
      };

  /// Handler untuk rute dinamis yang menerima argument (Detail & Booking)
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case detail:
        final package = settings.arguments as TourPackage?;
        if (package != null) {
          return MaterialPageRoute(
            settings: settings,
            builder: (_) => DetailScreen(package: package),
          );
        }
        // Fallback jika arguments tidak sesuai
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const NotFoundScreen(),
        );

      case booking:
        final package = settings.arguments as TourPackage?;
        if (package != null) {
          return MaterialPageRoute(
            settings: settings,
            builder: (_) => BookingScreen(package: package),
          );
        }
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const NotFoundScreen(),
        );

      default:
        return null; // Akan otomatis diteruskan ke onUnknownRoute
    }
  }

  /// Handler ketika route yang diminta tidak terdaftar di routes atau onGenerateRoute (Error 404)
  static Route<dynamic> onUnknownRoute(RouteSettings settings) {
    return MaterialPageRoute(
      settings: settings,
      builder: (_) => const NotFoundScreen(),
    );
  }
}
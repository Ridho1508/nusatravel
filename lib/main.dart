import 'package:flutter/material.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(const NusaTravelApp());
}

/// Root Application NusaTravel
class NusaTravelApp extends StatelessWidget {
  const NusaTravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NusaTravel',
      debugShowCheckedModeBanner: false,

      // Konfigurasi Tema: Simple Modern Travel App (Solid Color, No Gradient)
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: const Color(0xFFF8FAFC), // Abu-abu sangat muda bersih
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0D9488), // Solid Teal
          primary: const Color(0xFF0D9488),
          surface: Colors.white,
          brightness: Brightness.light,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Color(0xFF0F172A), // Warna teks utama gelap
          elevation: 0,
          scrolledUnderElevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 17,
            fontWeight: FontWeight.w700,
            color: Color(0xFF0F172A),
          ),
        ),
        cardTheme: const CardThemeData(
          color: Colors.white,
          elevation: 0,
          margin: EdgeInsets.zero,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF0D9488), // Solid Teal
            foregroundColor: Colors.white,
            elevation: 0,
            textStyle: const TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),

      // 1. initialRoute untuk menentukan halaman awal aplikasi (Splash Screen)
      initialRoute: AppRoutes.splash,

      // 2. routes untuk daftar route statis
      routes: AppRoutes.routes,

      // 3. onGenerateRoute untuk navigasi dinamis dengan arguments
      onGenerateRoute: AppRoutes.onGenerateRoute,

      // 4. onUnknownRoute untuk penanganan fallback route tidak ditemukan (Error 404)
      onUnknownRoute: AppRoutes.onUnknownRoute,
    );
  }
}
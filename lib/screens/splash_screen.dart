import 'package:flutter/material.dart';
import '../routes/app_routes.dart';

/// Halaman pembuka (Splash Screen) NusaTravel
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),

              // Logo & Icon Identitas NusaTravel (Solid Teal)
              Container(
                width: 96,
                height: 96,
                decoration: BoxDecoration(
                  color: const Color(0xFF0D9488), // Solid Teal
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: const Icon(
                  Icons.explore_rounded,
                  size: 52,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 28),

              // Nama Aplikasi
              const Text(
                'NusaTravel',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF0F172A), // Slate 900
                  letterSpacing: -0.5,
                ),
              ),

              const SizedBox(height: 10),

              // Tagline Sesuai Spesifikasi Tugas
              const Text(
                'Jelajahi Keindahan Indonesia',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF0D9488), // Solid Teal Accent
                ),
              ),

              const SizedBox(height: 12),

              // Deskripsi Penjelas
              const Text(
                'Temukan paket wisata terbaik dari Sabang sampai Merauke dengan harga transparan dan pemesanan yang mudah.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  height: 1.5,
                  color: Color(0xFF64748B), // Slate 500
                ),
              ),

              const Spacer(),

              // Tombol Mulai Eksplorasi
              SizedBox(
                width: double.infinity,
                height: 54,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigasi pushReplacementNamed sesuai instruksi tugas
                    Navigator.pushReplacementNamed(context, AppRoutes.home);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0D9488), // Solid Teal
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Mulai Eksplorasi',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.3,
                        ),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.arrow_forward_rounded, size: 20),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
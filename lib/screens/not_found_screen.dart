import 'package:flutter/material.dart';
import '../routes/app_routes.dart';

/// Halaman 404 (Not Found Screen) untuk menangani onUnknownRoute
class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Tidak Ditemukan',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),

              // Ilustrasi / Icon 404 Tema Solid Teal
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: const Color(0xFFF0FDFA), // Light Teal Tint
                  borderRadius: BorderRadius.circular(28),
                  border: Border.all(color: const Color(0xFFCCFBF1), width: 2),
                ),
                child: const Icon(
                  Icons.explore_off_rounded,
                  size: 50,
                  color: Color(0xFF0D9488), // Solid Teal
                ),
              ),

              const SizedBox(height: 28),

              // Status Code
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                decoration: BoxDecoration(
                  color: const Color(0xFFF1F5F9),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  'KODE ERROR: 404',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1,
                    color: Color(0xFF64748B),
                  ),
                ),
              ),

              const SizedBox(height: 14),

              // Judul Sesuai Spesifikasi Tugas
              const Text(
                'Halaman Tidak Ditemukan',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF0F172A),
                  letterSpacing: -0.5,
                ),
              ),

              const SizedBox(height: 10),

              // Deskripsi Singkat
              const Text(
                'Maaf, destinasi atau tautan halaman yang Anda tuju tidak ditemukan atau sudah tidak tersedia di NusaTravel.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  height: 1.5,
                  color: Color(0xFF64748B),
                ),
              ),

              const Spacer(),

              // Tombol Kembali ke Halaman Utama
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () {
                    // Kembali ke halaman Home Screen
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      AppRoutes.home,
                      (route) => false,
                    );
                  },
                  icon: const Icon(Icons.home_rounded, size: 20),
                  label: const Text(
                    'Kembali ke Halaman Utama',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0D9488), // Solid Teal
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
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
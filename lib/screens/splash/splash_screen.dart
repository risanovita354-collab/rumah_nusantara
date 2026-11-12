import 'dart:async';
import 'package:flutter/material.dart';
import '../../config/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToMain();
  }

  void _navigateToMain() {
    Timer(const Duration(seconds: 3), () {
      if (!mounted) return;
      Navigator.pushReplacementNamed(context, AppRoutes.mainNav);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(height: 20),

              // Bagian Tengah: Ikon, Judul, dan Subtitle
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.other_houses_outlined,
                    size: 100,
                    color: Colors.grey.shade700,
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Rumah Nusantara',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Mengenal keberagaman\nRumah Adat Indonesia',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey.shade600,
                      height: 1.3,
                    ),
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                    width: 100,
                    child: LinearProgressIndicator(
                      backgroundColor: Colors.grey.shade300,
                      valueColor: AlwaysStoppedAnimation<Color>(
                        Theme.of(context).primaryColor,
                      ),
                      minHeight: 4,
                    ),
                  ),
                ],
              ),

              // Bagian Bawah: Ornamen Ilustrasi
              const Opacity(
                opacity: 0.3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.landscape_outlined, size: 40, color: Colors.grey),
                    SizedBox(width: 8),
                    Icon(Icons.nature_outlined, size: 36, color: Colors.grey),
                    SizedBox(width: 8),
                    Icon(Icons.landscape_outlined, size: 40, color: Colors.grey),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
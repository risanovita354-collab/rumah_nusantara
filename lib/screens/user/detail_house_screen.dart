import 'package:flutter/material.dart';
import '../../models/house.dart';

class DetailHouseScreen extends StatelessWidget {
  final House house;

  const DetailHouseScreen({super.key, required this.house});

  // Fungsi pintar memecah teks ciri khas menjadi daftar poin yang rapi
  List<String> _getCharacteristicsList() {
    final dynamic charData = house.characteristics;
    List<String> items = [];

    if (charData is List) {
      items = charData.map((e) => e.toString().trim()).toList();
    } else if (charData is String && charData.trim().isNotEmpty) {
      // Jika bentuknya String panjang, pecah berdasarkan baris baru atau titik kalimat
      if (charData.contains('\n')) {
        items = charData.split('\n');
      } else {
        items = charData.split('. ');
      }
    }

    // Bersihkan teks dan buang baris kosong
    List<String> cleanList = items
        .map((e) => e.replaceAll(RegExp(r'^\s*[\bullet\-\*]\s*'), '').trim())
        .where((e) => e.isNotEmpty)
        .map((e) => e.endsWith('.') ? e : '$e.')
        .toList();

    return cleanList.isNotEmpty
        ? cleanList
        : ['Ciri khas informasi tidak tersedia.'];
  }

  Widget _buildHeaderImage(String imageUrl) {
    if (imageUrl.startsWith('http://') || imageUrl.startsWith('https://')) {
      return Image.network(
        imageUrl,
        width: double.infinity,
        height: 250,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) => Container(
          width: double.infinity,
          height: 250,
          color: Colors.indigo.shade100,
          child: const Icon(
            Icons.other_houses_rounded,
            size: 80,
            color: Colors.indigo,
          ),
        ),
      );
    } else {
      return Image.asset(
        imageUrl,
        width: double.infinity,
        height: 250,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) => Container(
          width: double.infinity,
          height: 250,
          color: Colors.indigo.shade100,
          child: const Icon(
            Icons.other_houses_rounded,
            size: 80,
            color: Colors.indigo,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final characteristicsList = _getCharacteristicsList();

    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        title: Text(
          house.name,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFF1E3A8A),
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gambar Header
            _buildHeaderImage(house.imageUrl),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Nama Rumah Adat
                  Text(
                    house.name,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1E293B),
                    ),
                  ),
                  const SizedBox(height: 8),

                  // Badge Provinsi
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.indigo.shade50,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.indigo.shade200),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.location_on_rounded,
                          size: 16,
                          color: Colors.indigo.shade800,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          house.province,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.indigo.shade800,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Section Deskripsi
                  const Text(
                    'Deskripsi',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1E293B),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    house.description,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xFF475569),
                      height: 1.6,
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Section Ciri Khas Bangunan (Rapi & Terpisah per Bullet)
                  const Text(
                    'Ciri Khas Bangunan',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1E293B),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Column(
                    children: characteristicsList.map((item) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 6),
                              width: 8,
                              height: 8,
                              decoration: const BoxDecoration(
                                color: Color(0xFF2563EB),
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF334155),
                                  height: 1.5,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
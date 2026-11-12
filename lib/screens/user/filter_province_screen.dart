import 'package:flutter/material.dart';

class FilterProvinceScreen extends StatefulWidget {
  final String? selectedProvince;

  const FilterProvinceScreen({super.key, this.selectedProvince});

  @override
  State<FilterProvinceScreen> createState() => _FilterProvinceScreenState();
}

class _FilterProvinceScreenState extends State<FilterProvinceScreen> {
  String? _selectedProvince;

  final List<String> _provinces = [
    'Semua Provinsi',
    'Aceh',
    'Sumatra Utara',
    'Sumatra Barat',
    'Riau',
    'Kepulauan Riau',
    'Jambi',
    'Bengkulu',
    'Sumatra Selatan',
    'Kepulauan Bangka Belitung',
    'Lampung',
    'DKI Jakarta',
    'Jawa Barat',
    'Banten',
    'Jawa Tengah',
    'DI Yogyakarta',
    'Jawa Timur',
    'Bali',
    'Nusa Tenggara Barat',
    'Nusa Tenggara Timur',
    'Kalimantan Barat',
    'Kalimantan Tengah',
    'Kalimantan Selatan',
    'Kalimantan Timur',
    'Kalimantan Utara',
    'Sulawesi Utara',
    'Gorontalo',
    'Sulawesi Tengah',
    'Sulawesi Barat',
    'Sulawesi Selatan',
    'Sulawesi Tenggara',
    'Maluku',
    'Maluku Utara',
    'Papua',
    'Papua Barat',
    'Papua Selatan',
    'Papua Tengah',
    'Papua Pegunungan',
    'Papua Barat Daya',
  ];

  @override
  void initState() {
    super.initState();
    _selectedProvince = widget.selectedProvince ?? 'Semua Provinsi';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Filter Provinsi')),
      body: Column(
        children: [
          Expanded(
            child: RadioGroup<String>(
              groupValue: _selectedProvince,
              onChanged: (val) {
                if (val != null) {
                  setState(() {
                    _selectedProvince = val;
                  });
                }
              },
              child: ListView.builder(
                itemCount: _provinces.length,
                itemBuilder: (context, index) {
                  final prov = _provinces[index];
                  return RadioListTile<String>(
                    title: Text(prov),
                    value: prov,
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context, _selectedProvince),
                child: const Text('Terapkan'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
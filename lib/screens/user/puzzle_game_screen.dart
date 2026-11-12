import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../models/house.dart';

class PuzzleGameScreen extends StatefulWidget {
  const PuzzleGameScreen({super.key});

  @override
  State<PuzzleGameScreen> createState() => _PuzzleGameScreenState();
}

class _PuzzleGameScreenState extends State<PuzzleGameScreen> {
  late House _selectedHouse;
  final int _gridSize = 3; // Grid 3x3 (Total 9 kepingan)
  late List<int> _puzzleBoard;
  late List<int> _solvedBoard;
  int? _firstSelectedIndex;
  int _moves = 0;
  bool _isCompleted = false;
  Timer? _timer;
  int _secondsElapsed = 0;

  @override
  void initState() {
    super.initState();
    _startNewGame();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startNewGame() {
    _timer?.cancel();
    _secondsElapsed = 0;
    _moves = 0;
    _firstSelectedIndex = null;
    _isCompleted = false;

    // Pilih rumah adat acak dari masterHouses
    List<House> houses = List.from(masterHouses)..shuffle();
    _selectedHouse = houses.first;

    int totalTiles = _gridSize * _gridSize;
    _solvedBoard = List.generate(totalTiles, (index) => index);
    
    // Mengacak kepingan puzzle
    _puzzleBoard = List.from(_solvedBoard);
    do {
      _puzzleBoard.shuffle();
    } while (_checkIfSolved()); // Pastikan tidak langsung terpakai dalam posisi menang

    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _secondsElapsed++;
      });
    });
  }

  void _onTileTap(int index) {
    if (_isCompleted) return;

    HapticFeedback.selectionClick();

    setState(() {
      if (_firstSelectedIndex == null) {
        // Pilih kepingan pertama
        _firstSelectedIndex = index;
      } else {
        // Tukar posisi kepingan pertama dengan kepingan kedua yang diketuk
        int temp = _puzzleBoard[_firstSelectedIndex!];
        _puzzleBoard[_firstSelectedIndex!] = _puzzleBoard[index];
        _puzzleBoard[index] = temp;

        _firstSelectedIndex = null;
        _moves++;

        // Cek apakah gambar sudah tersusun sempurna
        if (_checkIfSolved()) {
          _isCompleted = true;
          _timer?.cancel();
          HapticFeedback.heavyImpact();
          _showVictoryDialog();
        }
      }
    });
  }

  bool _checkIfSolved() {
    for (int i = 0; i < _puzzleBoard.length; i++) {
      if (_puzzleBoard[i] != _solvedBoard[i]) return false;
    }
    return true;
  }

  String _formatTime(int totalSeconds) {
    int minutes = totalSeconds ~/ 60;
    int seconds = totalSeconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  void _showVictoryDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: const Column(
          children: [
            Icon(Icons.extension_rounded, size: 60, color: Color(0xFF2563EB)),
            SizedBox(height: 8),
            Text(
              'Puzzle Selesai!',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              _selectedHouse.name,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text(
              'Khas ${_selectedHouse.province}',
              style: TextStyle(color: Colors.grey.shade600, fontSize: 13),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    const Text('Langkah', style: TextStyle(fontSize: 12, color: Colors.grey)),
                    Text('$_moves x', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  ],
                ),
                Column(
                  children: [
                    const Text('Waktu', style: TextStyle(fontSize: 12, color: Colors.grey)),
                    Text(_formatTime(_secondsElapsed), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  ],
                ),
              ],
            ),
          ],
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              setState(() {
                _startNewGame();
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF1E3A8A),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            ),
            child: const Text('Main Lagi', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  Widget _buildTileImage(int originalIndex) {
    int row = originalIndex ~/ _gridSize;
    int col = originalIndex % _gridSize;

    Widget imageWidget;
    if (_selectedHouse.imageUrl.startsWith('http')) {
      imageWidget = Image.network(_selectedHouse.imageUrl, fit: BoxFit.cover);
    } else {
      imageWidget = Image.asset(_selectedHouse.imageUrl, fit: BoxFit.cover);
    }

    return ClipRect(
      child: CustomMultiChildLayout(
        delegate: _PuzzleTileDelegate(row: row, col: col, gridSize: _gridSize),
        children: [
          LayoutId(
            id: 'tile_image',
            child: imageWidget,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        title: const Text(
          'Nusantara Puzzle',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFF1E3A8A),
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Info Bar (Langkah, Nama Rumah, Waktu)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.touch_app_rounded, size: 16, color: Color(0xFF2563EB)),
                        const SizedBox(width: 4),
                        Text('$_moves Langkah', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.indigo.shade50,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.timer_rounded, size: 16, color: Color(0xFF1E3A8A)),
                        const SizedBox(width: 4),
                        Text(_formatTime(_secondsElapsed), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Info Judul Rumah Adat
              Text(
                _selectedHouse.name,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF1E293B)),
              ),
              Text(
                'Provinsi ${_selectedHouse.province}',
                style: TextStyle(fontSize: 13, color: Colors.grey.shade600),
              ),
              const SizedBox(height: 16),

              // Area Board Puzzle (Grid 3x3)
              Expanded(
                child: Center(
                  child: AspectRatio(
                    aspectRatio: 1.0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: const Color(0xFF1E3A8A), width: 3),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(13),
                        child: GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: _puzzleBoard.length,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: _gridSize,
                            crossAxisSpacing: 2,
                            mainAxisSpacing: 2,
                          ),
                          itemBuilder: (context, index) {
                            int originalTileIndex = _puzzleBoard[index];
                            bool isSelected = _firstSelectedIndex == index;

                            return GestureDetector(
                              onTap: () => _onTileTap(index),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: isSelected
                                      ? Border.all(color: Colors.amber, width: 4)
                                      : null,
                                ),
                                child: _buildTileImage(originalTileIndex),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 16),
              const Text(
                'Ketuk kepingan pertama, lalu ketuk kepingan lain untuk menukar posisi.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12, color: Colors.grey, fontStyle: FontStyle.italic),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Layout Delegate untuk memotong pecahan gambar sesuai baris & kolom
class _PuzzleTileDelegate extends MultiChildLayoutDelegate {
  final int row;
  final int col;
  final int gridSize;

  _PuzzleTileDelegate({required this.row, required this.col, required this.gridSize});

  @override
  void performLayout(Size size) {
    if (hasChild('tile_image')) {
      double fullWidth = size.width * gridSize;
      double fullHeight = size.height * gridSize;

      layoutChild(
        'tile_image',
        BoxConstraints.tight(Size(fullWidth, fullHeight)),
      );

      positionChild(
        'tile_image',
        Offset(-col * size.width, -row * size.height),
      );
    }
  }

  @override
  bool shouldRelayout(_PuzzleTileDelegate oldDelegate) {
    return oldDelegate.row != row || oldDelegate.col != col || oldDelegate.gridSize != gridSize;
  }
}
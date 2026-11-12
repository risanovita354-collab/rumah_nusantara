class MatchCard {
  final String id;
  final String houseId;
  final String content; // Bisa berupa URL gambar atau Nama Rumah
  final bool isImage;
  bool isFlipped;
  bool isMatched;

  MatchCard({
    required this.id,
    required this.houseId,
    required this.content,
    required this.isImage,
    this.isFlipped = false,
    this.isMatched = false,
  });
}
import 'package:flutter/foundation.dart';

class Memory with ChangeNotifier {
  final String id;
  final String title;
  final DateTime date;
  final String description;
  final String imageUrl;
  final List<String> images;
  bool isFavorite;

  Memory(
      {required this.id,
      required this.title,
      required this.date,
      required this.description,
      required this.imageUrl,
      required this.images,
      this.isFavorite = false});

  void toggleFavoriteStatus() {
    print(isFavorite);
    isFavorite = !isFavorite;
    notifyListeners();
    print(isFavorite);
  }
}

class BooksModel {
  final int id;
  final String title;
  final int review;
  final String summary;
  final String category;
  final String author;
  final String image;
  final String yearPublished;

  const BooksModel({
    required this.id,
    required this.title,
    required this.review,
    required this.summary,
    required this.category,
    required this.author,
    required this.image,
    required this.yearPublished,
  });

  factory BooksModel.fromJson(Map<String, dynamic> json) {
    return BooksModel(
      id: json['id'],
      title: json['title'],
      review: json['review'] ?? 0,
      summary: json['summary'] ?? '',
      category: json['category'] ?? '',
      author: json['author'],
      image: json['image'] ?? '',
      yearPublished: json['year_published'] ?? '',
    );
  }
}
class ProductModel {
  final int id;
  final String title;
  final double price;
  final String description;
  final String image;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'] is int ? json['id'] : int.tryParse(json['id'].toString()) ?? 0,
      title: json['title'] ?? 'Không có tiêu đề',
      
      // SỬA DÒNG NÀY: Ép kiểu an toàn mọi giá trị sang chuỗi rồi mới parse thành double
      price: double.tryParse(json['price'].toString()) ?? 0.0, 
      
      description: json['description'] ?? 'Không có mô tả',
      image: json['image'] ?? '',
    );
  }
}
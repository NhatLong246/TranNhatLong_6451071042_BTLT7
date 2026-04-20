import '../models/product_model.dart';
import '../services/product_api_service.dart';

class ProductRepository {
  final ProductApiService _apiService = ProductApiService();

  Future<ProductModel> getProductDetail() async {
    final rawData = await _apiService.fetchProductDetail();
    // Gọi hàm fromJson để map dữ liệu
    return ProductModel.fromJson(rawData);
  }
}
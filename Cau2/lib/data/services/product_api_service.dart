import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../utils/constants.dart';

class ProductApiService {
  Future<Map<String, dynamic>> fetchProductDetail() async {
    try {
      final response = await http.get(Uri.parse(AppConstants.productDetailUrl));
      
      if (response.statusCode == 200) {
        // Decode JSON trả về 1 object (Map)
        return json.decode(response.body); 
      } else {
        throw Exception('Lỗi máy chủ: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Lỗi kết nối: $e');
    }
  }
}
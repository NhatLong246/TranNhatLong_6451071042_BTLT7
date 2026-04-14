import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../utils/constants.dart';

class UserApiService {
  Future<List<dynamic>> fetchUsers() async {
    try {
      final response = await http.get(Uri.parse(AppConstants.apiUrl));
      if (response.statusCode == 200) {
        return json.decode(response.body); // Trả về List JSON thô
      } else {
        throw Exception('Lỗi Server: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Không thể tải dữ liệu: $e');
    }
  }
}
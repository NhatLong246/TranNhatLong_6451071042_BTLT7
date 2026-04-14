import '../models/user_model.dart';
import '../services/user_api_service.dart';

class UserRepository {
  final UserApiService _apiService = UserApiService();

  Future<List<UserModel>> getUsers() async {
    final rawData = await _apiService.fetchUsers();
    // Biến JSON thô thành danh sách Object UserModel
    return rawData.map((json) => UserModel.fromJson(json)).toList();
  }
}
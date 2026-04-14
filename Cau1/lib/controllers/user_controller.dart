import 'package:flutter/material.dart';
import '../data/models/user_model.dart';
import '../data/repository/user_repository.dart';

class UserController extends ChangeNotifier {
  final UserRepository _repository = UserRepository();

  List<UserModel> users = [];
  bool isLoading = false;
  String? errorMessage;

  Future<void> fetchUsers() async {
    isLoading = true;
    errorMessage = null;
    notifyListeners(); // Báo cho UI xoay vòng loading

    try {
      users = await _repository.getUsers();
    } catch (e) {
      errorMessage = e.toString();
    } finally {
      isLoading = false;
      notifyListeners(); // Báo cho UI vẽ lại danh sách
    }
  }
}
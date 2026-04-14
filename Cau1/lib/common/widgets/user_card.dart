import 'package:flutter/material.dart';
import '../../data/models/user_model.dart';

class UserCard extends StatelessWidget {
  final UserModel user;

  const UserCard({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 2,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.indigo.shade100,
          child: Text(
            user.name[0], // Lấy chữ cái đầu tiên làm avatar
            style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.indigo),
          ),
        ),
        title: Text(user.name, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(user.email),
      ),
    );
  }
}
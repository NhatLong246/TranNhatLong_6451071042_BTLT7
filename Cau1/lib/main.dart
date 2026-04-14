import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app/app.dart';
import 'controllers/user_controller.dart';

void main() {
  runApp(
    // Bọc toàn bộ app bằng MultiProvider để khởi tạo Controller
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserController()),
      ],
      child: const MyApp(),
    ),
  );
}
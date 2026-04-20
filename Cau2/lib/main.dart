import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app/app.dart';
import 'data/repository/product_repository.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        // Cung cấp Repository thay vì Controller vì bài này dùng FutureBuilder
        Provider<ProductRepository>(create: (_) => ProductRepository()),
      ],
      child: const MyApp(),
    ),
  );
}
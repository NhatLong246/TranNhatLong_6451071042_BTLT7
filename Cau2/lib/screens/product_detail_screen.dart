import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data/models/product_model.dart';
import '../data/repository/product_repository.dart';
import '../common/styles/app_styles.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  late Future<ProductModel> _productFuture;

  @override
  void initState() {
    super.initState();
    // Gọi hàm lấy dữ liệu từ Repository khi màn hình vừa khởi tạo
    _productFuture = context.read<ProductRepository>().getProductDetail();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      appBar: AppBar(title: const Text('Chi tiết sản phẩm')),
      // Sử dụng FutureBuilder
      body: FutureBuilder<ProductModel>(
        future: _productFuture,
        builder: (context, snapshot) {
          // Trạng thái 1: Đang Loading
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          // Trạng thái 2: Có lỗi
          if (snapshot.hasError) {
            return Center(
              child: Text(
                '${snapshot.error}',
                style: const TextStyle(color: Colors.red, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            );
          }

          // Trạng thái 3: Không có dữ liệu
          if (!snapshot.hasData) {
            return const Center(child: Text('Không tìm thấy sản phẩm.'));
          }

          // Trạng thái 4: Lấy dữ liệu thành công
          final product = snapshot.data!;

          return SingleChildScrollView(
            // Giúp màn hình có thể cuộn nếu nội dung quá dài
            padding: const EdgeInsets.all(16.0),
            // Sử dụng Column để xếp các thành phần theo chiều dọc
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Hiển thị ảnh sản phẩm
                Center(
                  child: Image.network(
                    product.image,
                    height: 250,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 24),

                // Hiển thị Title
                Text(product.title, style: AppStyles.titleStyle),
                const SizedBox(height: 12),

                // Hiển thị Price
                Text('\$${product.price}', style: AppStyles.priceStyle),
                const SizedBox(height: 24),

                // Hiển thị Description
                const Text(
                  'Mô tả sản phẩm:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  product.description,
                  style: const TextStyle(
                    fontSize: 16,
                    height: 1.5,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'MSSV: 6451071042',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

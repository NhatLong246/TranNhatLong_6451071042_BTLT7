# 🚀 Flutter API Practice - Bộ 7 Bài Tập CRUD & MVC

Tổng hợp 7 bài thực hành lập trình Flutter kết nối RESTful API, được tổ chức theo kiến trúc **MVC (Model-View-Controller)** chuẩn hóa.

## 📂 Cấu trúc thư mục (Architecture)
Dự án được phân cấp rõ ràng để dễ dàng quản lý và mở rộng:
- `lib/apps/`: Cấu hình ứng dụng và theme gốc.
- `lib/models/`: Định nghĩa khuôn mẫu dữ liệu (Data Models).
- `lib/controllers/`: Xử lý logic nghiệp vụ và quản lý trạng thái (Provider).
- `lib/services/`: Chứa các hàm gọi API (http).
- `lib/views/`: Giao diện các màn hình chính.
- `lib/widgets/`: Các thành phần giao diện tái sử dụng.
- `lib/utils/`: Hằng số, styles và hàm tiện ích.

## 📝 Danh sách bài tập đã hoàn thành
1. **Bài 1: GET API** - Hiển thị danh sách người dùng từ API.
2. **Bài 2: Product Detail** - Xem chi tiết sản phẩm dựa trên ID.
3. **Bài 3: Create Post (POST)** - Tạo bài viết mới gửi lên máy chủ.
4. **Bài 4: Update Info (PUT)** - Cập nhật thông tin hồ sơ cá nhân.
5. **Bài 5: Delete Task (DELETE)** - Xóa công việc khỏi danh sách (Tính năng vuốt để xóa).
6. **Bài 6: Search API** - Tìm kiếm sản phẩm theo từ khóa (Kỹ thuật Debounce).
7. **Bài 7: Pull to Refresh** - Kéo để làm mới dữ liệu tin tức.

## 🛠 Công nghệ sử dụng
- **Flutter SDK**: Framework chính.
- **Provider**: Quản lý trạng thái (State Management).
- **HTTP**: Kết nối và làm việc với REST API.
- **MockAPI / JSONPlaceholder / DummyJSON**: Các nguồn dữ liệu giả lập.

# Thư mục này chứa toàn bộ các script SQL để xây dựng cơ sở dữ liệu, chèn dữ liệu mẫu va thực hiện truy vấn cho dự án Phân tích hiệu quả chiến dịch HackerRank bằng SQL

---

## Cấu trúc thư mục

| File | Mô tả |
|------|-------|
| `create_tables.sql` | Tạo schema và các bảng dữ liệu chính như `student_id`, `lesson`, `submit_date`, `score`,... |
| `insert_data.sql` | Chèn dữ liệu mẫu mô phỏng kết quả học viên từ chiến dịch thực tế. |
| `queries.sql` | Chứa các truy vấn phân tích chính để rút ra insight về hành vi học viên và hiệu quả chiến dịch. |
| `schema.png` | Chứa lược đồ quan hệ giữa các bảng.|

---

## Các bước thực thi script

Bước 1: Tạo bảng (chạy file create_tables.sql)
Bước 2: Chèn dữ liệu mẫu (chạy file insert_data.sql)
Bước 3: Thực hiện lần lượt các câu truy vấn (Từ Query 1 đến Query 7) để tìm ra insight

--- 

## Môi trường khuyến nghị

- **Hệ quản trị CSDL:** Microsoft SQL Server   
- **Công cụ khuyến nghị:** SQL Server Management Studio (SSMS)  hoặc DBeaver
- **Hệ điều hành:** Windows 10 / 11  


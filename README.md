# Phân tích hiệu quả chiến dịch HackerRank bằng SQL

---

## 1. Bối cảnh dự án

- Tổ chức một **challenge SQL HackerRank miễn phí** gồm 10 buổi học online.
- Người tham gia sẽ:
    + Đăng ký form.
    + Làm bài tập trắc nghiệm theo ngày trên google form.
---

## 2. Mục tiêu dự án

Mục tiêu: Truy vấn SQL để làm rõ **hiểu hành vi học viên, đánh giá hiệu quả chiến dịch, rút insight cho tương lai**.

2.1. Hiệu quả học tập:
- Bao nhiêu % học viên theo hết 10 ngày?
- Ngày nào có tỷ lệ bỏ cuộc cao nhất?
- Trung bình điểm số theo từng ngày / chủ đề.
2.2.  Phân khúc học viên:
- Học viên mới (chỉ làm 1-2 ngày) với học viên gắn bó (7-10 ngày).
- Nhóm nào có kết quả học tốt hơn?
2.3 Nội dung form:
- Chủ đề nào khó nhất (điểm thấp)?
- Chủ đề nào học viên làm nhiều nhất?
2.4. Insight cho tương lai:
- Làm sao để giữ chân học viên lâu hơn?
- Nên phát triển challenge tương tự cho nội dung nào?

---

## 3. Cấu trúc thư mục

```
hackerank-sql/
├── sql/
│   ├── create_tables.sql      # tạo bảng 
|   ├── insert_data.sql        # chèn dữ liệu mẫu vào bảng
│   ├── schema.png             # ảnh về lược đồ quan hệ giữa các bảng
│   ├── queries.sql            # các câu lệnh truy vấn
│   └── README.md            
│
├── reports/
│   ├── analysis.md            # mô tả các kết quả chính từ SQL
│   └── figures/               # ảnh chụp kết quả query 
│
└── README.md                  # file chính mô tả dự án
``` 
---

## 4. Hướng dẫn sử dụng

1. Tạo cơ sở dữ liệu trong SQLServer hoặc DBeaver.  
2. Chạy file `create_tables.sql` để tạo schema.
3. Chạy file `insert_data.sql` để insert dữ liệu.
4. Thực thi `queries.sql` để phân tích và lấy kết quả. 
5. Đưa ra hướng phát triển.

---

## 5. Các câu hỏi truy vấn, phân tích chính

- Query 1: Tỷ lệ hoàn thành đủ 10 ngày challenge so với tổng số người đăng ký tham gia challenge  
- Query 2: Với mỗi ngày từ 1–10, tính số lượng học viên không tham gia ở ngày nào đó → tìm ra ngày có tỷ lệ dropout cao nhất. 
- Query 3: Điểm trung bình theo chủ đề  
- Query 4: Phân khúc học viên theo mức độ tham gia
- Query 5: Học viên tiềm năng (high performers)
- Query 6: Tỷ lệ giữ chân khách hàng
- Query 7: Tương quan giữa thời gian học mỗi ngày và điểm trung bình

---

## 6. Kết quả

- Từ kết quả của các câu truy vấn cho thấy hành trình học tập của học viên chia làm 3 giai đoạn rõ rệt:
- Giai đoạn đầu – Hứng khởi nhưng mong manh:
    + 53% học viên đăng ký thực sự tham gia, với retention ngày đầu đạt 83%. Tuy nhiên chỉ 14.4% hoàn thành toàn bộ 10 ngày, phản ánh động lực ban đầu mạnh nhưng thiếu cơ chế giữ chân lâu dài.

- Giai đoạn giữa – Rào cản nội dung:
    + Dropout tăng mạnh từ ngày 4–6 (liên quan đến nội dung SQL trung cấp như Aggregate, Subquery). Dù điểm trung bình vẫn cao (≈9.2), nhiều học viên rời bỏ do độ khó tăng và thiếu hỗ trợ thực hành.

- Giai đoạn cuối – Mất đà nhưng chất lượng cao:
    + Ngày 10 ghi nhận dropout cao nhất (59%), song nhóm học viên trung thành (≥7 buổi) vẫn chiếm 65.4%, và 64.7% đạt “high performer” (score ≥8). Điều này cho thấy nhóm còn lại có chất lượng học thực sự tốt.

- Insight tổng hợp:
    + Challenge thu hút tốt (hứng khởi đầu cao), nội dung chất lượng (điểm trung bình >9), nhưng cần cải thiện retention cuối kỳ. Học viên hiệu quả nhất dành 30–60 phút mỗi ngày, chứng tỏ “chất lượng hơn thời lượng”.

---

## 7. Hướng phát triển

- Tích hợp pipeline ETL để tự động tải dữ liệu vào DB
- Triển khai orchestration với Airflow/Luigi: Quản lý workflow ETL theo lịch, theo dõi và xử lý lỗi.
- Tích hợp hệ thống lưu trữ hiện đại: Mở rộng dữ liệu lên Data Warehouse (Snowflake, BigQuery, Redshift) hoặc Data Lake (S3, HDFS).  

---

## 8. Công nghệ sử dụng

- SQL (SQLServer / DBeaver). 
- Hệ điều hành: Windown 10/11

## License

Dự án này được cấp phép theo [Giấy phép MIT](LICENSE).

---

## 9. Tác giả

- Dự án được thực hiện bởi [Nguyễn Thiện Quang] trong quá trình học Data Engineering. 

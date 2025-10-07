## Thư mục này mô tả về các kết quả chính từ các truy vấn

---

## Query1: tỷ lệ hoàn thành đủ 10 ngày challenge so với tổng số người đăng ký tham gia challenge

- Chỉ có 14.4195% đã học và hoàn thành đầy đủ 10 buổi trong tổng toàn bộ những người đăng kí tham gia challenge lần này, những người đăng kí khác có 2 trường hợp xảy ra:
    + Một là họ không tham gia học tập dù đã đăng kí
    + Hai là bỏ cuộc sau 1 thời gian học

--- 

## Query 2: Với mỗi ngày từ 1–10, tính số lượng học viên không tham gia ở ngày nào đó → tìm ra ngày có tỷ lệ dropout cao nhất.

- Vậy là ta có tổng 283 học viên đã tham gia khóa học trong tổng số 534 người đăng kí challenge. Điều này cho thấy tỷ lệ tham gia khóa học lần này là 52.9963%, chỉ chiếm hơn nửa số người đăng kí tham gia.
- Từ đó ta sẽ bắt đầu tính số người bỏ làm 1 ngày nào đó bằng công thức: Tổng số người học - Số người tham gia học ở từng ngày
- Và tỷ lệ dropout ở mỗi ngày theo công thức: (Tổng số người học - Số người tham gia học ở từng ngày)/Tổng số người học

---

## Query 3: Điểm trung bình theo chủ đề

- Từ bảng trung bình ta thấy điểm đang dao động quanh 9. Ta có thể nhận định rằng khả năng nhận thức và học hiểu SQL của các học viên đều rất tốt, dù thời gian chỉ gồm 10 buổi ngắn ngủi nhưng cho đến buổi 8,9,10 đều là các bài khó hơn như hàm Join hay CTE thì điểm vẫn là trên 9, điều này cho thấy mức độ hiểu và vận dụng bài của học sinh khá cao. 
- Tuy nhiên ta cần chú ý cả Day 4 dù nội dung là Sắp xếp và đếm nhưng điểm trung bình chỉ quanh 8.8, cho thấy rằng nhiều học viên vẫn cần chú ý hơn trong từng câu hỏi vì có thể nó là câu hỏi bẫy nên các bạn hay bị trừ điểm.

---

## Query 4: Phân khúc học viên theo mức độ tham gia

- Từ Output này ta thấy, tuy rằng tỷ lệ hoàn thành đủ 10 buổi chỉ chiếm hơn 14%, cho thấy tỷ lệ “bám trụ” đến bài cuối không được quá cao, nhưng ở phần chia phân khúc như này ta có thể thấy rằng dù tỷ lệ hoàn thành đủ không quá cao nhưng tỷ lệ học viên đã hoàn thành từ 7 bài trở lên lại rất cao, chiếm đến 65,371% trong số những học viên tham gia học tập.
- Đây là 1 con số khả quan cho thấy rằng dù thời gian học không dài, các chủ đề học càng ngày càng khó nhưng số lượng học viên gắn bó với challenge lần này đến những phút gần cuối vẫn rất cao là 185 người. Đây là tín hiệu tích cực để có thể đưa ra chiến lược tốt hơn trong nhiều thử thách sắp tới.

---

## Query 5: Học viên tiềm năng (high performers)

- Ta có đến 183 bạn là học viên tiềm năng trên tổng cộng 283 bạn thực sự tham gia khóa học, chiếm đến 64,6643%, và chiếm 34,2697% so với số lượng người đã đăng kí tham gia challenge. 
- Xét trên góc độ của số người tham gia khóa học thì ta có thể thấy gần 65% học viên đã hoàn thành nhiều Lesson với số điểm cao. Nhận định được khả năng của các bạn học viên đều rất tốt và đồng đều, các Lesson được phân bổ đủ kiến thức, không bị quá khó đối với challenge cơ bản.
- Tuy nhiên khi xét đến góc độ số người đăng kí thì tỉ lệ học viên tiềm năng này chưa cao, chỉ chiếm hơn 34%. Điều này cho thấy chiến dịch trong giai đoạn bắt đầu học chưa được triển khai tốt và toàn diện. Điều này dẫn đến việc chưa thể lan tỏa được chức năng, tác dụng mà challenge này có thể mang đến cho các bạn học viên. 

---

## Query6 : Tỷ lệ giữ chân khách hàng 

- Cột FirstSubmitDate: Ngày đầu tiên học viên submit bài (1, 2, 3, 4, 6, 8), đại diện cho các cohort khác nhau.
- Cột Dn (D0 đến D9): Số lượng học viên submit ở ngày n (D0 = ngày đầu, D1 = ngày sau 1 ngày, ..., D9 = ngày sau 9 ngày) cho mỗi cohort.
- Cột per_nD: Tỷ lệ % học viên từ cohort đó vẫn submit ở ngày n, với per_0D = 100% (tổng số học viên bắt đầu ở ngày đó).
- Cohort size: Số học viên ban đầu của mỗi cohort được suy ra từ cột D0 (e.g., Cohort 1: 263 học viên, Cohort 2: 12 học viên, ...).
⇒ Từ kết quả ta thấy giữ chân được sinh viên qua các ngày có dấu hiệu giảm dần.
---

## Query 7: Tương quan giữa thời gian học mỗi ngày và điểm trung bình 

- Từ bảng output ta thấy rằng thời gian học và chất lượng học đều là 2 yếu tố vô cùng quan trọng để tăng khả năng sử dụng SQL của bản thân. Dù khoảng cách điểm giữa 3 khung thời gian không quá lớn nhưng ta thấy được rằng thời gian học nhiều hơn thì số thông tin ta thu thập và học được sẽ nhiều hơn, nhưng để hiểu và áp dụng được nó thì không thể chỉ tăng thời gian học lên nhiều là được. 
    + Khung từ 30 phút đến 1 tiếng tăng 2,98% so với khung ≤30 phút.
    + Tuy nhiên khung > 1 tiếng lại giảm 0,33% so với khung 30 phút đến 1 tiếng.

---

⇒ Tổng hợp từ 7 truy vấn, có thể rút ra một bức tranh toàn diện về hiệu quả chiến dịch SQL Challenge HackerRank:
    - Tỷ lệ hoàn thành chỉ đạt 14.4%, phản ánh rào cản duy trì động lực học trong hành trình 10 ngày.
    - Tuy nhiên, 65.37% học viên trung thành (Loyal) và 64.66% high performers cho thấy chất lượng nội dung và năng lực học viên ở mức tốt.
    - Điểm trung bình cao (>9) khẳng định challenge mang lại hiệu quả học tập thực sự, dù dropout tập trung ở giai đoạn cuối (Day 8–10).
    - Thời gian học tối ưu 30–60 phút/ngày giúp hiệu quả cao nhất — chứng minh rằng học tập ngắn gọn, tập trung mang lại kết quả tốt hơn kéo dài.

⇒ Challenge đạt hiệu quả trong việc truyền tải kiến thức SQL cơ bản đến trung cấp, nhưng cần tối ưu khâu onboarding và giữ chân học viên ở giai đoạn cuối.

⇒ Qua đây ta thấy dù chỉ là khảo sát 1 mẫu cụ thể không quá lớn nhưng ta cũng có thể rút ra rằng nền cân bằng giữa thời gian học và chất lượng học để bản thân không bị mất quá nhiều thời gian nhưng vẫn đáp ứng đủ kiến thức có thể dùng trong công việc.

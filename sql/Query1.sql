use duadata_challenge;
-- Query 1: tỷ lệ hoàn thành đủ 10 ngày challenge so với tổng số người đăng ký tham gia challenge
-- lọc trùng đối với những học sinh làm nhiều lần cho 1 lession
with loc as(
	select Lesson, Student_id, row_number() over(partition by Lesson, Student_id order by Submit_date) as ranking
	from Enrollment 
), tong_sv as(
	select Student_id, count(*) as tongsv from loc 
		where ranking = 1
		group by Student_id 
		having count(*)=10
)
select cast(count(*)*100/ (select count (Customer_id) from Customer) as decimal(10,4)) as 'Percent_of_completing' 
	from tong_sv;


-- Query 7: Tương quan giữa thời gian học mỗi ngày và điểm trung bình 
-- lọc ra số sinh viên tham gia nhiều lần và chỉ lấy đúng 1 lần đầu tiên 
with fil_duplicate as (
	select Lesson, Student_id, Score , row_number() over (partition by Lesson , Student_id order by Submit_date ) as ranking
	from Enrollment
)

select Study_time_per_day , cast(avg(Score*1.0) as decimal (10,2)) as avg_score from fil_duplicate f
	join Customer c on c.Customer_id = f.Student_id
	group by Study_time_per_day ;

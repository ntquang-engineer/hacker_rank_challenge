-- Query6 : Tỷ lệ giữ chân khách hàng

-- lấy ra ngày đầu tiên mà mỗi học viên bắt đầu học
with student_cte as (
	select distinct Lesson, cast (trim(substring(Lesson,5,2)) as int) as submit_lessonday, Student_id,
	min(cast(trim(substring(Lesson,5,2))as int)) over (partition by Student_id) as First_submitdate
	from Enrollment e 
),

-- tính được khoảng cách từ các ngày học sau so với ngày học đầu tiên
pre_cohort as (
	select Lesson, submit_lessonday, student_id, First_submitdate, (submit_lessonday - First_submitdate) as retention
	from student_cte
),

-- đưa ra số lượng học viên vẫn tiếp tục học sau n ngày

cohort_cte as (
	select First_submitdate,
	count (distinct case when retention = 0 then student_id end) as D0,
	count (distinct case when retention = 1 then student_id end) as D1,
	count (distinct case when retention = 2 then student_id end) as D2,
	count (distinct case when retention = 3 then student_id end) as D3,
	count (distinct case when retention = 4 then student_id end) as D4,
	count (distinct case when retention = 5 then student_id end) as D5,
	count (distinct case when retention = 6 then student_id end) as D6,
	count (distinct case when retention = 7 then student_id end) as D7,
	count (distinct case when retention = 8 then student_id end) as D8,
	count (distinct case when retention = 9 then student_id end) as D9
	from  pre_cohort
	group by First_submitdate
)

-- tính tỷ lệ giữ chân khách hàng
select 100.0 as per_0D,
	   cast(D1*100.0/D0 as decimal(10,2))  as per_1D,
	   cast(D2*100.0/D0 as decimal(10,2))  as per_2D,
	   cast(D3*100.0/D0 as decimal(10,2))  as per_3D,
	   cast(D4*100.0/D0 as decimal(10,2))  as per_4D,
	   cast(D5*100.0/D0 as decimal(10,2))  as per_5D,
	   cast(D6*100.0/D0 as decimal(10,2))  as per_6D,
	   cast(D7*100.0/D0 as decimal(10,2))  as per_7D,
	   cast(D8*100.0/D0 as decimal(10,2))  as per_8D,
	   cast(D9*100.0/D0 as decimal(10,2))  as per_9D
from cohort_cte;

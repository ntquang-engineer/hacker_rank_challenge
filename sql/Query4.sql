use duadata_challenge;
-- Query4: phân khúc học viên theo mức độ tham gia

with fil_duplicate as (
	select Lesson, Student_id, score, row_number() over (partition by Lesson, Student_id order by Submit_date) as ranking
	from Enrollment
)
, count_enroll as(
	select Student_id , count(*) as total_enroll from fil_duplicate 
	where ranking = 1
	group by Student_id
)


SELECT (
	case when total_enroll<=2 then 'new'
		 when total_enroll between 3 and 6 then 'regular'
		 else 'loyal' end
) as student_segment, count(*) count_segment,
	(cast ((count(*)*100.0/(select count(c.Customer_id) from Customer c where c.Customer_id in (select Student_id from Enrollment e))) as decimal(10,4)	
	)) as Percent_segment 
from count_enroll 
group by (
	case when total_enroll <=2 then 'new'
		when total_enroll between 3 and 6 then 'regular'
		else 'loyal' end
);


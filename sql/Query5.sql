
-- Query 5:Học viên tiềm năng (high performers)

with fil_duplicate as
(select Lesson,Student_id,score,row_number() over(partition by Lesson,Student_id order by Submit_date) as ranking
from enrollment
)


select f.Student_id,c.Customer_name,count(f.Student_id) as Total_lesson,cast(avg(f.score*1.0) as decimal(10,2)) as Avg_score
from fil_duplicate as f
join Customer c  on f.Student_id = c.Customer_id
where ranking=1
group by Student_id,c.Customer_name
having count(Student_id)>=7 and cast(avg(score*1.0) as decimal(10,2))>=8;
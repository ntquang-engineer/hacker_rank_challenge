use duadata_challenge;
-- Query 3: Điểm trung bình theo chủ đề

with loc as (
	select Lesson , Student_id , score , row_number() over (partition by Lesson, Student_id order by Submit_date) as ranking
	from Enrollment
)
select q.Lesson, q.Name_lesson, cast(avg(score*1.0) as decimal (10,4)) as avg_score
	from loc l
    left join Quiz q on q.Lesson = l.Lesson
    where ranking = 1
    group by q.Lesson , q.Name_lesson 
    order by cast(trim(substring(q.Lesson , 5, 2)) as int);
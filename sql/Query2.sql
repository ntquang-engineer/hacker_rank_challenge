use duadata_challenge;
-- Query 2: Với mỗi ngày từ 1–10, tính số lượng học viên không tham gia ở ngày nào đó → tìm ra ngày có tỷ lệ dropout cao nhất.
select Lesson,
	(select count(c.Customer_id) from Customer c where c.Customer_id in (select Student_id from Enrollment e))
	- count(distinct Student_id) as Dropout,
	(cast (((select count(c.Customer_id) from Customer c where c.Customer_id in (select Student_id from Enrollment e)) - count(distinct Student_id))*100 /
	 (select count(c.Customer_id) from Customer c where c.Customer_id in (select Student_id from Enrollment e)) as decimal(10,4))) as Percent_dropout
from Enrollment 
group by Lesson
order by Percent_dropout desc;


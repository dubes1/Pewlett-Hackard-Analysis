Select e.emp_no,
e.first_name,
e.last_name,
t.title,
t.from_date,
t.to_date

INTO part1_challenge
FROM employees as e
Inner Join titles as t
on (e.emp_no=t.emp_no)
Where birth_date between '1952-01-01' and '1955-12-31'
order by e.emp_no;
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO retirement_titles
FROM part1_challenge
ORDER BY emp_no ASC, to_date DESC;
select count(title),
title
into retiring_titles
from retirement_titles
group by title
order by count desc;
SELECT DISTINCT ON (emp_no) e.emp_no,
e.first_name,
e.last_name,
t.title,
d.from_date,
d.to_date
Into mentorship_program
from employees as e
inner join dept_employees as d
on (e.emp_no=d.emp_no)
inner join titles as t
on (e.emp_no=t.emp_no)
where d.to_date = '9999-01-01' 
and birth_date between '1965-01-01' and '1965-12-31'
order by emp_no;

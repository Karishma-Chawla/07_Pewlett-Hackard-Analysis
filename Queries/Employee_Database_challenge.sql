Select e.emp_no,e.first_name,e.last_name, t.title,t.from_date,t.to_date
INTO retirement_title
from employees as e 
 left join titles as t
 on e.emp_no=t.emp_no
where e.birth_date >= '1952-01-01' AND  e.birth_date <= '1955-12-31' 
ORDER BY emp_no

SELECT DISTINCT ON (emp_no) emp_no,first_name,last_name,title
INTO unique_titles
FROM retirement_title
WHERE to_date= '9999-01-01'
ORDER BY emp_no, to_date DESC;

Select DISTINCT (title) title, count(emp_no) 
INTO retiring_titles
from unique_titles
GROUP BY title
ORDER BY count(emp_no) desc;

Select DISTINCT ON (e.emp_no) e.emp_no,e.first_name,e.last_name,e.birth_date,d.from_date,d.to_date
,t.title
INTO mentorship_eligibilty
from employees as e 
 join dept_emp as d
 on e.emp_no=d.emp_no
join titles as t
on t.emp_no=d.emp_no and d.to_date = t.to_date
where d.to_date= '9999-01-01' and e.birth_date >= '1965-01-01' AND  e.birth_date <= '1965-12-31' 
ORDER BY emp_no
-- CHALLENGE ASSIGNMENT

-- 1. Determine the number of retiring employees by title
SELECT e.emp_no,
	e.first_name,
e.last_name,
	ti.title,
	ti.from_date,
ti.to_date
INTO retirement_titles
FROM employees AS e
LEFT JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
    rt.first_name,
    rt.last_name,
    rt.titles

INTO unique_titles
FROM retirement_titles AS rt
WHERE (rt.to_date = '9999-01-01')
ORDER BY rt.emp_no, rt.to_date DESC;

-- Count the number of retiring employees per title
SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY (title)
ORDER BY count DESC;

-- 2. create a mentorship-eligibility table holding current employees born in 1965
SELECT DISTINCT ON(e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date, 
	de.to_date,
	ti.title
INTO mentorship_eligibility
FROM employees AS e
LEFT JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
LEFT JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (de.to_date = '9999-01-01')
	 AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;
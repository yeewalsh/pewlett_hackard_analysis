# Pewlett Hackard Employee Analysis

Analyzing employee data with SQL, pgAdmin, and Postgres to find trends in retiring employees

## Overview

By analyzing the number of retiring employees nearing retirement age by department and title, we can assist Pewlett Hackard in predicting how much additional staff they will need to mentor or hire to ensure full employment. 

## Reults

* Reviewing the numbers of current employees nearing retirement per titles, the majority of them are Senior Engineers.

![Retirement Titles](retirement_titles.png)

* Pewlett Hackard will need to focus on refilling the roles Senior Engineer and Senior Staff, as these two titles made up 36% and 34% respectively. There are currently 25,916 Senior Engineers and 24,926 Senior Staff set to retire soon.

* The employee ids of the current employees eligible for mentorship range from 10095 to 499495. Assuming that the employee number increases with each employee hired and has not changed in company history, this range shows that potential mentors have joined the company over a long time range, and have varying skill and knowledge levels. 

* The number of current employees eligible for mentorship is only 1549. The total number of employees listed in the retirement 

[Mentorship Eligibility](mentorship_eligibility.csv)

## Summary

### Additional queries: 

* There will need to be 72,458 roles filled at Pewlett Hackard as employees nearing retirment age retire. This is 30% of the 240,124 total current PH employees.  

* By further investigating the number of total current employees by department for comparison if there is one department disproportionally affected by upcoming retirements. Note: juding the total numbers of employees by title showed a large disparity in the total number of current employees, this is likely due to not every employee in the employees table being matched to a title in the titles table. This is why I grouped this count by department instead:

![Current employees by department](current_dept_emp.png)

I recommend focusing on the Engineer (developemnt) and Staff (production) role categories for increased recruiting and mentorship efforts, as these departments are the largest and also have the most retiring (Senior Engineers and Senior Staff). 

* Looking only at employees born in 1965 as potential mentors, there are not enough people to mentor the next generation of PH employees. 

* By further dividing the list of mentors by title as well, we can better gauge in which departnemtns the mentor program would be most successful. Running the below query showing eligible mentors by title do not match with the numbers of retiring employees by title:

![Mentors by Title](mentor_titles.png)

 We could look at the numbers of current employees born between 1965-70 to seek additional mentors for titles or departments where the potential mentors are not adequate to help fill the vacating roles. 


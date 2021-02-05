# Pewlett-Hackard-Analysis

## Overview
The purpose of this analysis is to provide retirement information for upper management to help mitigate the "silver tsunami" of impending retirements.


## Results
 
The Retiring Titles table provides some valuable insight in how different divisions could be impacted by upcoming retirements. 

![Retiring Titles](https://raw.githubusercontent.com/jdwrhodes/Pewlett-Hackard-Analysis/main/Data/retiring_titles.png "Retiring Titles")

For example:
1. Over half of those projected to retire, 57000+, are either Senior Engineers or Senior staff. Meaning over half of those retiring are some of the most experienced employees in the company.
2. There may be something wrong with the data as only 2 managers are set to retire soon. There may be managers that hold the title of Senior Engineer or another position. This would need to be studied further as losing a large number of managers, and not know about it ahead of time, would be detrimental.

The Mentorship Eligibility table is valuable in a multitude of ways.

![Mentorship Eligibility](https://raw.githubusercontent.com/jdwrhodes/Pewlett-Hackard-Analysis/main/Data/mentorship_eligibilty.png "Mentorship Eligibility")

3. As these employees are about 10 years younger than the employees that are about to retire, they are well situated in experience to step in where others are stepping away.
4. By having this list now, once these employees are mentored, we know turn around and mentor the next group underneath them. Ideally, having a cycle of mentorship throughout all ages and levels of the organization would help set us up well for the long term.

## Summary

1. In the coming years, approximately 90000 positions will need to be filled. 
2. Currently, there is a dearth of employees to be mentored, compared to those about to retire. The ratio is about 60-1. It will be a huge effort to make up the short fall.

3. One way to make up the shortfall would be expanding the Mentorship Eligibility pool by including a larger age range. By searching from 1960-1965, you add another 88000 employees who could be mentored. Which would more than make up the shortfall.

``` sql
SELECT DISTINCT ON (em.emp_no) em.emp_no,
	em.first_name,
	em.last_name,
	em.birth_date,
	de.from_date,
	de.to_date,
	ti.title
FROM employees as em
INNER JOIN dept_emp as de
	ON (em.emp_no = de.emp_no)
INNER JOIN titles as ti
	ON (em.emp_no = ti.emp_no)
WHERE (em.birth_date BETWEEN '1960-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY em.emp_no;
```

4. Another way to look into the "silver tsunami" could be to get the average salary for those retiring to project any increases in salaries for those taking their place.

```sql
SELECT COUNT(ut.title), ut.title, AVG(sa.salary)
FROM unique_titles as ut
LEFT JOIN salaries as sa
	ON (ut.emp_no = sa.emp_no)
GROUP BY ut.title
ORDER BY COUNT(ut.title) DESC;
```

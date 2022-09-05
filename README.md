# Pewlett-Hackard-Analysis

## Objective
The goal of this project was to determine list of retiring employees in the next few years for hypothetical company, Pewlett Hackard 
and the positions (and titles) that the company needs to fill. 

## Data 
10 CSV Files with data on Employees, departments, managers salaries, titles, retiring titles.

![image](https://user-images.githubusercontent.com/98617082/188519978-fec9df14-fe28-4d54-b043-aec4aa083cad.png)


## Results:

* The first step to was to create a list of names of retiring employees by joining the employees and titles tables 
filtering them by date of birth . This table has duplicates due to emplyee promotions within their tenure.


![image](https://user-images.githubusercontent.com/98617082/163580319-9d50c3a8-61bd-4d83-a936-1f84ec3ae392.png)

* DISTINC ON was used to remove the duplicates and get the  unique titles and was saved in a separate table.This helps to see the total quantum of workforce that will be eligible for retirement and thereby conduct further analyses.  


![image](https://user-images.githubusercontent.com/98617082/163580452-99db713e-ad84-4dec-9561-c6dcadaca808.png)

* Using the groupby and count function total count of employee eligible for retirement against each title was calcuated.This helps to plan which functions will need to be focussed on. It is noted that Senior Engineer and Senior Staff  hold the largest share 36% and 34% of employees likely preparing for retirement.


![image](https://user-images.githubusercontent.com/98617082/163580939-f8e8622e-c7d0-43b5-9836-a78cb4491df0.png)

* The next step was to determine the employees that qualified for mentorship, and only 1549 total employees were found to be
qualify for mentorship/training for an internal promotion.


![image](https://user-images.githubusercontent.com/98617082/163581118-ba57ce4a-aeea-41dc-b629-f7d8bab23611.png)


## Summary
Based on the findings of my analysis Pewlett Hackard is potentially facing over 72,458  vacant positions soon out of whoch only 1549 i.e. 2.1% can be filled internally.So the company has to draw up plans for external hires accordingly. The two additional codes needed for selecting the count of roles will need to be filled as the "silver tsunami" begins and if there enough qualified, retirement-ready employees in the departments

select count (emp_no) from unique_titles

select count (emp_no) from mentorship_eligibilty




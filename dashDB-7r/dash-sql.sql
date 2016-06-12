select * from DASH6973.MTG_DTE_EMPLOYEE_LOC a11 join GOSALESHR.EMPLOYEE a12 on a12.employee_code=a12.employee_code
select a11.employee_code, count(mtg_ct) from DASH6973.MTG_DTE_EMPLOYEE_LOC a11 join GOSALESHR.EMPLOYEE a12 on a12.employee_code=a12.employee_code group by a11.employee_code


select a12.employee_code, mtg_loc, 
count(mtg_ct) 
from DASH6973.MTG_DTE_EMPLOYEE_LOC a11 
join GOSALESHR.EMPLOYEE a12 on a12.employee_code=a12.employee_code 
group by a12.employee_code, mtg_loc

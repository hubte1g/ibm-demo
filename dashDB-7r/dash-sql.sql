select * from DASH6973.MTG_DTE_EMPLOYEE_LOC a11 join GOSALESHR.EMPLOYEE a12 on a12.employee_code=a12.employee_code
select a11.employee_code, count(mtg_ct) from DASH6973.MTG_DTE_EMPLOYEE_LOC a11 join GOSALESHR.EMPLOYEE a12 on a12.employee_code=a12.employee_code group by a11.employee_code


select a12.employee_code, mtg_loc, 
count(mtg_ct) 
from DASH6973.MTG_DTE_EMPLOYEE_LOC a11 
join GOSALESHR.EMPLOYEE a12 on a12.employee_code=a12.employee_code 
group by a12.employee_code, mtg_loc

//DDL
CREATE TABLE "EMPLOYEE_RT_TIER_LKP" ("EMPLOYEE_CODE" INTEGER , "EMPLOYEE_RT_TIER" INTEGER );

CREATE TABLE "MTG_DTE_EMPLOYEE_LOC" ("MTG_LOC" INTEGER , "MTG_TAG" VARCHAR(21), "EMPLOYEE_CODE" INTEGER , "MTG_DTE" DATE , "TM_OF_DY_IND" VARCHAR(14), "MTG_CT" INTEGER , "MTG_DUR_TTL" INTEGER , "ACCPTD_TTL" INTEGER , "DCLND_TTL" INTEGER , "INVTD_TTL" INTEGER );

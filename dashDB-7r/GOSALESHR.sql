SELECT a11.EMPLOYEE_CODE, a11.GENDER_CODE, a11.DATE_HIRED, a11.TERMINATION_CODE, a11.BIRTH_DATE,
a12.EMPLOYEE_HISTORY_CODE, EMPLOYEE_HISTORY_PARENT, RECORD_START_DATE,
a12.RECORD_END_DATE, POSITION_CODE, POSITION_START_DATE, MANAGER_CODE, BRANCH_CODE, ORGANIZATION_CODE
FROM GOSALESHR.EMPLOYEE a11
join GOSALESHR.EMPLOYEE_HISTORY a12 on (a12.EMPLOYEE_CODE=a11.EMPLOYEE_CODE)
order by 
;

--current employees who originate costly meetings, by demographic and organizational attributes
select a13.EMPLOYEE_CODE, MTG_DTE, MTG_NM_CAT, MTG_LOC, 
a14.POSITION_CODE, MANAGER_CODE, BRANCH_CODE, ORGANIZATION_CODE, BIRTH_DATE, --(DATE-BIRTH_DATE) AS AGE
sum(MTG_DUR) MTG_DUR_TTL, sum(MTG_INVTD_CT) MTG_INVTD_TTL. sum(MTG_ACCPTD_CT) MTG_ACCPTD_TTL, sum(MTG_DCLND_CT) MTG_DCLND_TTL
from(
select MTG_ID, MTG_NM, MTG_NM_CAT, MTG_DTE, EMPLOYEE_CODE, MTG_LOC, EE_MTG_ORGNZR_FLG, MTG_TAG, MTG_DUR, MTG_INVTD_CT, MTG_ACCPTD_CT, MTG_DCLND_CT
FROM GOSALESHR.MTG_DTE_EMPLOYEE_LOC
) a13 join SELECT (
SELECT a11.EMPLOYEE_CODE, a11.GENDER_CODE, a11.DATE_HIRED, a11.TERMINATION_CODE, a11.BIRTH_DATE,
a12.EMPLOYEE_HISTORY_CODE, EMPLOYEE_HISTORY_PARENT, RECORD_START_DATE,
a12.RECORD_END_DATE, POSITION_CODE, POSITION_START_DATE, MANAGER_CODE, BRANCH_CODE, ORGANIZATION_CODE
FROM GOSALESHR.EMPLOYEE a11
join GOSALESHR.EMPLOYEE_HISTORY a12 on (a12.EMPLOYEE_CODE=a11.EMPLOYEE_CODE) ) a14 on (a14.EMPLOYEE_CODE=a13.EMPLOYEE_CODE)

where EE_MTG_ORGNZR_FLG in ('Y') --and RECORD_END_DATE is NULL
and 



select EMPLOYEE_HISTORY_CODE,
EMPLOYEE_HISTORY_PARENT,
EMPLOYEE_CODE,
RECORD_START_DATE,
RECORD_END_DATE,
POSITION_CODE,
POSITION_START_DATE,
MANAGER_CODE,
BRANCH_CODE,
ORGANIZATION_CODE from EMPLOYEE_HISTORY

select employee_code from EMPLOYEE_SUMMARY

DEPARTMENT_LOOKUP

GENDER_LOOKUP

SELECT POSITION_CODE, DEPARTMENT_CODE FROM POSITION_DEPARTMENT

select position_code from POSITION LOOKUP

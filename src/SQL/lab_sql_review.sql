/*
# Copyright (c) 2021-2025 University of Missouri                   
# Author: Xing Song, xsm7f@umsystem.edu                            
# File: lab_sql_review.sql                                                 
# Description: This script is for reviewing basic SQL syntax used for querying data in Snowflake data cloud
*/

-- programmatically setup worksheet parameters
use role CLASS_MEMBER_XSM7F;
use warehouse NEXTGENBMI_WH;
use database CLASS_MEMBER_XSM7F_DB;
use schema public;

/* "Select..." */
-- Ex: How many patients in total do we have in our CDM datamart? 
select count(patid) from deidentified_pcornet_cdm.demographic;
select count(distinct patid) from deidentified_pcornet_cdm.demographic;

-- Ex: How many encounters in total do we have in our CDM datamart? 


/* "Select...Where..." */
-- Ex: How many Asian females have ever been seen in our healthcare system? 
select count(patid) from deidentified_pcornet_cdm.demographic
where sex = 'F' and race = '01';

-- Ex: How many Asian or African American patients have ever been seen in our healthcare system? 


-- Ex: How many patients have ever been seen in our healthcare system who are currently above 65 years old? 




/* "...Group by..." */
-- Ex: How many patients for each racial group?


-- Ex: How many visits for each encounter type (e.g., ED, AV, IP,...)




/* "Create Table..." */
-- Ex: Collect the list of inpatient visits with LOS >= 2 days


-- Ex: Collect all secrum creatinine lab results



/* "With...As..." */
-- Ex: How many pediatric patients have ever been hospitalized at MUHC? 


-- Ex: What is the median age of ALS patients when they were first diagnoized? 



/* "...Case when..." */
-- Ex: Following the WHO definition, how many adult patients are underweight, normal, overweight and obese? 



-- Ex: 


/* "...Join...On" 
   "...Left Join...On"
   "...Right Join...On"
*/
-- Ex: 





/* "Drop table..." */


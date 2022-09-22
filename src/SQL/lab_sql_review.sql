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



/* "Select...Where...In..." 
   "Select...Where...Like..."
*/
-- Ex: How many patients have been diagnosed with ALS? 


-- Ex: How many patients have been diagnosed with Motor Neuron Disease? 


-- Ex: How many patients have been diagnosed with Hypertensive Disease (I, )? 




/* "...Order by..." 
   "...min()...", "max()..."
*/

-- Ex: When is the most recent inpatient visit to our healthcare system? 


-- Ex: Who is the oldest patient ever recorded in our healthcare system? (assume they are all still alive) 




/* "...Group by..." */
-- Ex: How many patients for each racial group?


-- Ex: Generate two frequency tables for different encounter type (e.g., ED, AV, IP,...) in 2019 vs. 2020? 





/* "Create Table..." */
-- Ex: Collect the list of inpatient visits with LOS >= 2 days


-- Ex: Collect all secrum creatinine lab results


-- Ex: Collect the list of all Office visits


-- Ex: Collect all patients who had a record of SBP >= 140mmhg


-- Ex: Collect all patients with a historical diagnosis of hypertensive diease



/* "Drop table..." */


/* "...Join...On" 
   "...Left Join...On"
   "...Right Join...On"
*/
-- Ex: How many pediatric patients have ever been hospitalized at MUHC? 



-- Ex: How many inpatient encounters with patients staying in hospital for >= 2days and had at least 1 record of elevated serum creatinine during the stay (SCr > 4mg/dL)?



-- Ex: Identify patients with uncontrolled blood pressure
--       a. SBP>=160mmhg at an office visit
--       b. SBP>=140mmhg at an office visit with a history of hypertensive disease
--       c. SBP>=140mmhg at two office visits on different dates


-- Ex: What is the median age of ALS patients when they were first diagnosed with ALS? 



-- Ex: What is the mortality rate of ALS patients seen in our system?  


/* "...Case when..." */
-- Ex: How many patients for each race group? This time we want to do some more groupings: 
--     - group NI and UN into a single UN group, called 'NI'
--     - group minor race groups into 'OT' ('','','','','')


-- Ex: Following the WHO definition, how many adult patients are underweight, normal, overweight and obese? 





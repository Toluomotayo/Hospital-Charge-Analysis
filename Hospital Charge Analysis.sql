# dropping database if it exists
drop database if exists hospital;

# creating database
create database hospital;

#using the database
use hospital;

# creating a table in sql before importing csv file
create table inpatient_charges (
    drg_definition VARCHAR(255),
    provider_id VARCHAR(50),
    provider_name VARCHAR(255),
    provider_street_address VARCHAR(255),
    provider_city VARCHAR(100),
    provider_state VARCHAR(50),
    provider_zip_code VARCHAR(20),
    hospital_referral_region_description VARCHAR(255),
    total_discharges INT,
    average_covered_charges DECIMAL(15, 2),
    average_total_payments DECIMAL(15, 2),
    average_medicare_payments DECIMAL(15, 2)
);
# showing the tables in the database
show tables;

# checking the table structure of inpatient_charges
describe inpatient_charges;

# checking for null or missing data
select
    sum(case when drg_definition is null then 1 else 0 end) as missing_drg,
    sum(case when provider_id is null then 1 else 0 end) as missing_provider_id
from inpatient_charges;

# knowing the number of rows in the dataset
select count(*) from inpatient_charges;

# Identifying High-Cost Hospitals
select provider_name, provider_city, provider_state, 
       concat('$', format(round(avg(average_covered_charges), 2), 2)) as avg_covered_charges
from inpatient_charges
group by provider_name, provider_city, provider_state
order by avg_covered_charges desc
limit 10;

# Understanding Pricing Differences Across States
select provider_state, 
       concat('$', format(round(avg(average_covered_charges), 2), 2)) as avg_state_charges
from inpatient_charges
group by provider_state
order by avg_state_charges desc;

# Analyzing Profit Gaps Between Hospital
select provider_name, 
       concat('$', format(round(avg(average_covered_charges - average_medicare_payments), 2), 2)) as charge_medicare_gap
from inpatient_charges
group by provider_name
order by charge_medicare_gap desc
limit 10;

# Finding the Most Common Diagnoses by Volume
select drg_definition, 
       sum(total_discharges) as total_discharges
from inpatient_charges
group by drg_definition
order by total_discharges desc
limit 10;
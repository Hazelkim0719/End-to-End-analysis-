-- data processing involving data cleaning, schema modification, data migration 

-- Decided to choose datatype as TEXT becasue it allows me to store character without limits 
ALTER TABLE public.bike_yr0
    ALTER COLUMN dteday TYPE TEXT,
    ALTER COLUMN rider_type TYPE TEXT;

-- Not sure if my sql is going to work, so I use BEGIN and (COMMIT& ROLLBACK) in case
BEGIN;

-- changing dteday into datatime datatype 
UPDATE bike_yr0
SET dteday = TO_DATE(dteday, 'DD/MM/YYYY')
WHERE dteday IS NOT NULL;

-- checking if the queries worked as i desired 
SELECT dteday FROM bike_yr0 WHERE dteday IS NOT NULL;

-- mission complete, so commit permantly.
COMMIT;


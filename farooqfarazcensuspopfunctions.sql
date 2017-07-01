/* Showing functions and knowledge of SQL on MySQL/*
SHOW DATABASES;
USE northwind;
/* getting idea of data set by looking at columns */
SELECT *
from censuspop;
/* count*/
select count(totpop)
from censuspop;
/* how many distinct average household sizes */
select count(distinct(Avehouseholdsize))
from censuspop;
/* Viewing total populations of various zipcodes from smallest to largest */
select Zipcode, totpop
from censuspop
order by totpop;
/*Which median age has highest populations? */
select MedAge, totpop
from censuspop
order by MedAge;
/* looking at females and males between 20000 and 30000 inclusive*/
select Zipcode, totpop, Totalfems, Totmales
from censuspop
where ((Totmales between 20000 and 30000) and (Totalfems between 20000 and 30000))
order by Totmales, Totalfems
;
/* finding Zip Codes beginning with "900" where Tot males are between 25,000 and 30,000 and avehousehold size is greater than 2.5*/
select Zipcode, Totmales, Avehouseholdsize
from censuspop
WHERE (Zipcode like "900%")
and (Totmales between 25000 and 30000)
and (Avehouseholdsize > 2.5)
order by Totmales /*can have decreasing here as well */ ;

/* using AS statement to report and rename */
select AVG(totpop) as avg_totpop , max(MedAge) as max_medage
from
censuspop;

/* grouping using Avehouseholdsize */
select totpop, MedAge, TotalHouseholds
from censuspop
group by Avehouseholdsize;

/* find the household size when total pop is between 45000 and 60000, total households are greater than 10000, and zip code  ends with a 1 */
select Avehouseholdsize, totpop, TotalHouseholds, Zipcode 
from censuspop
where (totpop between 45000 and 60000) and 
(TotalHouseholds > 10000 ) and 
Zipcode like "9%1";

/* other functions known but not shown , NULL, IS NULL, having among others like merge, wild cards, joins, etc */

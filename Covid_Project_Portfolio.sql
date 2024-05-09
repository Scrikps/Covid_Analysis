-- Total_Cases vs Total_Deaths in Philippines datewise
Select date, total_cases, total_deaths
From covid_deaths
Where location like '%Philipp%';

-- Total Death % in Philippines by population
Select location, max(total_deaths)/avg(Population)*100 as death_Percentage
From covid_deaths
Group by location
having location like '%Philipp%';

--  Highest death as % by Country per Population
Select location, max(total_deaths)/avg(Population)*100 as death_Percentage
From covid_deaths
Group by location
Order by death_Percentage desc;

-- Total possitive cases % in Philippines by population
Select location, max(total_cases)/avg(Population)*100 as Cases_Percentage
From covid_deaths
Group by location
having location like '%Philipp%';

-- Total possitive cases % in the world by population
Select location, max(total_cases)/avg(Population)*100 as Cases_Percentage
From covid_deaths
Group by location
Order by Cases_Percentage desc;

-- Continent possitive cases
Select location, max(total_cases) as total_case
From covid_deaths
Where continent is null
Group by location
order by total_case desc;

-- Continent Deaths
Select location, max(total_deaths) as total_death
From covid_deaths
Where continent is null
Group by location
order by total_death desc;

-- Daily cases vs hospitalized vs icu_patient For Philippines
Select date,new_cases, hosp_patients, icu_patients
From covid_deaths
Where location like '%Philipp%';



-- --------------------------------------------------------
# Datasets Used: cricket_1.csv, cricket_2.csv
-- cricket_1 is the table for cricket test match 1.
-- cricket_2 is the table for cricket test match 2.
-- --------------------------------------------------------
create database Cricket;

use Cricket;

show tables;

select * from cricket_1;
select * from cricket_2;
select * from churn1;
select * from cric_combined;
select * from new_cricket;

-- --------------------------------------------------------
# Q1. Find all the unique players in both cricket 1 and 2 tables
-- ------------UNION operator ------------------THIS IS THE RIGHT ANSWER
select Player_Id, Player_Name from cricket_1
union
select Player_Id, Player_Name from cricket_2;

-- -----------------INTERSECT OPERATOR--------
select Player_Id, Player_Name from cricket_1
Intersect select Player_Id, Player_Name from cricket_2;

 
# Q2. Write a query to extract the player details player_id, runs and player_name from the table “cricket_1” who
#  scored runs more than 50
SELECT player_id,runs,player_name 
from cricket_1 
where runs>50;

select * from cricket_1;

# Q3. Write a query to extract all the columns from cricket_1 where player_name starts with ‘y’ and ends with ‘v’.
 
select * from cricket_1
where player_name like 'Y%v';


-- --------------------------------------------------------
# Dataset Used: cric_combined.csv 
-- --------------------------------------------------------
select * from cric_combined;

# Q5. Write a MySQL query to add a column PC_Ratio to the table that contains the divsion ratio 
# of popularity to charisma .(Hint :- Popularity divide by Charisma)


-- First added a column with 'FLOAT' DATA TYPE 
alter table cric_combined add column Pc_ratio float;

-- Then I changed it to 'Decimal' data type 
ALTER TABLE cric_combined
MODIFY COLUMN Pc_ratio DECIMAL(10, 2);

-- Disabled safe updates for the below query to work
SET SQL_SAFE_UPDATES = 0;

UPDATE cric_combined
SET Pc_ratio = Popularity / Charisma;

# Q6. Write a MySQL query to find the top 5 players having the highest popularity to charisma ratio.

select * from cric_combined
order by Pc_ratio desc
limit 5;

# Q8. Extract Player_Id  and PC_Ratio where the PC_Ratio is between 0.12 and 0.25.
select player_id, pc_ratio from cric_combined
where pc_ratio between 0.12 and 0.25;

-- --------------------------------------------------------
# Dataset Used: new_cricket.csv
-- --------------------------------------------------------
select * from new_cricket;

# Q10. Write a MySQL query to display all the NULL values  in the column Charisma imputed with 0.

select player_name, 
ifnull(Charisma,0) as Charisma
from new_cricket where
charisma is null;

-- --------------------------------------------------------
# Dataset Used: churn1.csv 
-- --------------------------------------------------------
select * from churn1;

# Q18. Write a query to extract the customerID, InternetConnection and gender 
# from the table “churn1” where the value of the column “InternetConnection” has ‘i’ 
# at the second position.
select customerID, InternetConnection, gender
from churn1
where InternetConnection like '_i%';

# Q19. Find the records where the tenure is 6x, where x is any number.
SELECT * FROM churn1
WHERE tenure BETWEEN 60 AND 69;

-- Alternative syntax:
-- WHERE tenure >= 60 AND tenure <= 69;

# Q20. Write a query to display the player names in capital letter and arrange in alphabatical order along with the charisma, 
# display 0 for whom the charisma value is NULL.

select * from new_cricket;

SELECT 
    UPPER(Player_Name) AS Capital_Player_Name, 
    IFNULL(Charisma, 0) AS Charisma
FROM new_cricket
ORDER BY Player_Name ASC;

-- -----------------------------------------------------------------------------------------------------------

create database Cricket;

use Cricket;

show tables;

select * from cricket_1;
select * from cricket_2;
select * from churn1;
select * from cric_combined;
select * from new_cricket;








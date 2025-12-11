# SQL
#sql csv file creating commands
SELECT * FROM departments 
INTO OUTFILE 'C:/Users/kasul/OneDrive/Desktop/SQL practise/SQL/exports/departments.csv'
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n';

SELECT * FROM projects 
INTO OUTFILE 'C:/Users/kasul/OneDrive/Desktop/SQL practise/SQL/exports/projects.csv'
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n';

SELECT * FROM emp_projects 
INTO OUTFILE 'C:/Users/kasul/OneDrive/Desktop/SQL practise/SQL/exports/emp_projects.csv'
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n';

SELECT * FROM salaries_history 
INTO OUTFILE 'C:/Users/kasul/OneDrive/Desktop/SQL practise/SQL/exports/salaries_history.csv'
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n';

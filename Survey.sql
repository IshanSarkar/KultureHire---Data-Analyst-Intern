-- 1. Total number of people responded to the survey from India
SELECT COUNT(DISTINCT `Email address`) AS count_of_people FROM kulturehire.survey WHERE `Residing Country`='India';
-- 1953 responders are from India

-- 2. Total Number of Male who have responded to the survey
SELECT COUNT(DISTINCT `Email address`) AS count_of_male FROM kulturehire.survey WHERE Gender='M';
-- 1207 responders are Male

-- 3. Total Number of Female who have responded to the survey
SELECT COUNT(DISTINCT `Email address`) AS count_of_female FROM kulturehire.survey WHERE Gender='F';
-- 800 responders are Female

-- 4. Number of Gen-Z and their influencing factors
SELECT `Career Aspirations`, COUNT(`Career Aspirations`) AS count_of_GenZ FROM (
SELECT `Email address`, `Career Aspirations` FROM kulturehire.survey GROUP BY `Career Aspirations`, `Email address`) a GROUP BY `Career Aspirations` ORDER BY 2 DESC;
-- 'Parents' has the highest count

-- 5. Number of Gen-Z and their higher education aspirations
SELECT `Pursue Higher Education Ouside India`, COUNT(`Pursue Higher Education Ouside India`) AS count_of_GenZ FROM (
SELECT `Email address`, `Pursue Higher Education Ouside India` FROM kulturehire.survey GROUP BY `Pursue Higher Education Ouside India`, `Email address`) a GROUP BY `Pursue Higher Education Ouside India`;
-- 924 people said yes which is the highest

-- 6. Likelihood of Gen-Z working for a Non-Social Impact organization
SELECT `Likelihood to Work for Non-Social Impacting Company`, COUNT(`Likelihood to Work for Non-Social Impacting Company`) AS count_of_GenZ FROM (
SELECT `Email address`, `Likelihood to Work for Non-Social Impacting Company` FROM kulturehire.survey GROUP BY `Likelihood to Work for Non-Social Impacting Company`, `Email address`) a GROUP BY `Likelihood to Work for Non-Social Impacting Company` ORDER BY 2 DESC;
-- Most of the people aren't sure as highest number of people gave 5,7,6,8 rating and then inclining towards lower rating which means towards no

-- 7. Number of Gen-Z and their working environment preferences
SELECT `Work Mode`, COUNT(`Work Mode`) AS count_of_GenZ FROM (
SELECT `Email address`, `Work Mode` FROM kulturehire.survey GROUP BY `Work Mode`, `Email address`) a GROUP BY `Work Mode` ORDER BY 2 DESC;
-- 'Learning-Rewarding Employer' has the highest count

-- 8. Number of Gen-Z and their type of employer preferences
SELECT `Employer Learning Spectrum`, COUNT(`Employer Learning Spectrum`) AS count_of_GenZ FROM (
SELECT `Email address`, `Employer Learning Spectrum` FROM kulturehire.survey GROUP BY `Employer Learning Spectrum`, `Email address`) a GROUP BY `Employer Learning Spectrum` ORDER BY 2 DESC;
-- 'Learning-Rewarding Employer' has the highest count

-- 9. Number of Gen-Z and their preferred learning modes
SELECT `Learning Environment`, COUNT(`Learning Environment`) AS count_of_GenZ FROM (
SELECT `Email address`, `Learning Environment` FROM kulturehire.survey GROUP BY `Learning Environment`, `Email address`) a GROUP BY `Learning Environment` ORDER BY 2 DESC;
-- 'Company''s Self-Guided Learning' has the highest count closely followed by 'Expert-Led Learning'

-- 10. Number of responses against the aspirational jobs
SELECT `Aspirational Job`, COUNT(`Aspirational Job`) AS count_of_GenZ FROM (
SELECT `Email address`, `Aspirational Job` FROM kulturehire.survey GROUP BY `Aspirational Job`, `Email address`) a GROUP BY `Aspirational Job` ORDER BY 2 DESC;
-- 'Design and Creative strategist' has the highest count

-- 11. Gen-Z's preferences for the size of the employers
SELECT `Company Size`, COUNT(`Company Size`) AS count_of_GenZ FROM (
SELECT `Email address`, `Company Size` FROM kulturehire.survey GROUP BY `Company Size`, `Email address`) a WHERE `Company Size`!='Not Provided' GROUP BY `Company Size` ORDER BY 2 DESC;
-- 'Mid Size Companies' has Highest Count
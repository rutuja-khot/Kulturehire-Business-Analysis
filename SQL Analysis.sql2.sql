-- 1. What industries are Gen-Z most interested in pursuing careers in?

SELECT `careers_choice_for_aspirational_job` FROM `gen-z`.`aspirations`;

SELECT
	careers_choice_for_aspirational_job as interested_industry,
	COUNT(*) AS interest_count
FROM aspirations
GROUP BY interested_industry
ORDER BY interest_count DESC;


-- 2. What are the top factors influencing Gen-Z’s career choices?

SELECT `influencing_factor` FROM `gen-z`.`aspirations`;
SELECT
	influencing_factor,
    COUNT(*) AS influencing_factor_count
FROM aspirations
GROUP BY influencing_factor
ORDER BY influencing_factor_count DESC;
    

-- 3. What is the desired work environment for Gen-Z? (e.g., remote, hybrid, in-office)
SELECT `preferred_working_environment_for_you` FROM `gen-z`.`aspirations`;
SELECT
	preferred_working_environment_for_you AS work_environment,
    COUNT(*) AS work_environment_count
FROM aspirations
GROUP BY work_environment
ORDER BY work_environment_count DESC;



-- 4. How do financial goals, such as salary and benefits, impact career aspirations among Gen-Z?

SELECT `minimum_expected_monthly_salary_in_hand_for_first_three_years` FROM `gen-z`.`aspirations`;
SELECT `minimum_expected_monthly_salary_in_hand_for_first_five_years` FROM `gen-z`.`aspirations`;

SELECT
	minimum_expected_monthly_salary_in_hand_for_first_three_years AS salary_for_three_year,
    minimum_expected_monthly_salary_in_hand_for_first_five_years AS salary_for_five_year,
    COUNT(*) AS total_count
FROM aspirations
GROUP BY salary_for_three_year,
			salary_for_five_year;
	

-- 5. What role do personal values and social impact play in career choices for Gen-Z?

SELECT `mission_is_not_bringing_social_impact` FROM `gen-z`.`aspirations`;
SELECT `mission_is_not_clearly_defined` FROM `gen-z`.`aspirations`;

SELECT
	mission_is_not_bringing_social_impact AS social_impact,
    mission_is_not_clearly_defined AS personal_value,
    COUNT(*) AS total_count
FROM aspirations
GROUP BY social_impact,
			personal_value
ORDER BY total_count DESC;




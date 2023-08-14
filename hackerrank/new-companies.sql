SELECT Employee.company_code, Company.founder, 
COUNT(DISTINCT Lead_Manager.lead_manager_code),
COUNT(DISTINCT Senior_Manager.senior_manager_code),
COUNT(DISTINCT Manager.manager_code),
COUNT(DISTINCT Employee.employee_code)
FROM Employee, Company, Lead_Manager, Senior_Manager, Manager
WHERE Employee.company_code = Company.company_code
AND Employee.lead_manager_code = Lead_Manager.lead_manager_code
AND Employee.senior_manager_code = Senior_Manager.senior_manager_code
AND Employee.manager_code = Manager.manager_code
GROUP BY Company.company_code, Company.founder
ORDER BY Employee.company_code ASC;

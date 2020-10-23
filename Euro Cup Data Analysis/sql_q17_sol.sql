--Write a SQL query to find the country where the most assistant referees come from, and the count of the assistant referees

select top 1 country_name, count(distinct ass_ref_name) as count_assref from soccer_country s inner join asst_referee_mast a on s.country_id = a.country_id group by country_name order by count_assref desc
go
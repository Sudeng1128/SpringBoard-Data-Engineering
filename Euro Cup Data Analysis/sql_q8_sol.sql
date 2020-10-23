--Write a SQL query to find the match number for the game with the highest number of penalty shots, and which countries played that match

select m.match_no, total_pen, country_name from match_details m inner join soccer_country s on m.team_id = s.country_id inner join 
(select top 1 sum(penalty_score) as total_pen, match_no from match_details group by match_no order by total_pen desc) a 
on m.match_no = a.match_no

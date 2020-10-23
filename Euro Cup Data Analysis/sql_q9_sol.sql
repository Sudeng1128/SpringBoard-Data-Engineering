--Write a SQL query to find the goalkeeper’s name and jersey number, playing for Germany, who played in Germany’s group stage matches

select player_name, jersey_no from match_details m inner join player_mast p on m.team_id = p.team_id inner join soccer_country s on m.team_id = s.country_id 
where country_name = 'Germany' and play_stage = 'G' and posi_to_play = 'GK' group by jersey_no, player_name
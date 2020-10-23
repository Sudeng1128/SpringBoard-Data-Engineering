--Write a SQL query to find the number of captains who were also goalkeepers

select count(distinct player_captain) as num_captains from player_mast p inner join match_captain m on p.team_id = m.team_id where posi_to_play = 'GK'
go
--Write a SQL query to find all the defenders who scored a goal for their teams

select count(goal_id) as goal_count, player_name, posi_to_play from player_mast p inner join goal_details g on p.player_id = g.player_id where posi_to_play = 'DF' or posi_to_play = 'FD' group by player_name, posi_to_play
go


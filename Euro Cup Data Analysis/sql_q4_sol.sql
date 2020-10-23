--Write a SQL query to compute a list showing the number of substitutions that happened in various stages of play for the entire tournament

select count(distinct player_id) as num_players from player_in_out where play_half = 2 and in_out = 'I'
--Write a SQL query to find the substitute players who came into the field in the first half of play, within a normal play schedule

select player_name from player_mast m inner join player_in_out i on m.player_id = i.player_id where play_schedule = 'NT' and play_half = 1 and in_out = 'I'
go
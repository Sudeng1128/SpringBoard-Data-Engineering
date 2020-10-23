--Write a SQL query to find the date EURO Cup 2016 started on.

select min(play_date) earliest_date from match_mast
go
--Write a SQL query to find the number of matches that were won by penalty shootout.

select count(*) as wins_decided_by_shootout from match_mast where decided_by = 'P' and results = 'WIN'
go
--Write a SQL query to find the number of matches that were won by a single point, but do not include matches decided by penalty shootout

select count(distinct match_no) won_by_1point from match_mast where decided_by = 'N' and goal_score in ('0-1', '01-Feb', '02-Jan', '1-0')
go
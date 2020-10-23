--Write a SQL query to find referees and the number of bookings they made for the entire tournament. Sort your answer by the number of bookings in descending order

select count(distinct match_no) as num_bookings, ass_ref_name as ref_name from match_details d inner join asst_referee_mast a on d.ass_ref = a.ass_ref_id group by ass_ref_name
union all
select count(distinct match_no) as num_bookings, referee_name as red_name from match_mast m inner join referee_mast r on m.referee_id = r.referee_id group by referee_name order by num_bookings desc
go
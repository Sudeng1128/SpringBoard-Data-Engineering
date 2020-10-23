--Write a SQL query to find the referees who booked the most number of players.

select top 1 count(distinct player_id) as bookings, ref_name from player_booked p inner join 
(select match_no, referee_name as ref_name from referee_mast r inner join match_mast m on r.referee_id = m.referee_id
union all
select match_no, ass_ref_name as ref_name from asst_referee_mast a inner join match_details d on a.ass_ref_id = d.ass_ref) s on p.match_no = s.match_no group by ref_name order by bookings desc
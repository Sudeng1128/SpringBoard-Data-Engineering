--. Write a SQL query to find referees and the number of matches they worked in each venue

select count(distinct m.match_no) as num_matches, referee_name, ass_ref_name, venue_id from 
referee_mast r inner join match_mast m on r.referee_id = m.referee_id inner join match_details d on m.match_no = d.match_no inner join asst_referee_mast a on d.ass_ref = a.ass_ref_id
group by referee_name, ass_ref_name, venue_id
go
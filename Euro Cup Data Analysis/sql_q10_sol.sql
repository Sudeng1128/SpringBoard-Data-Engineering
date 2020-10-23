--Write a SQL query to find all available information about the players under contract to Liverpool F.C. playing for England in EURO Cup 2016

select * from player_mast p inner join soccer_country s on p.team_id = s.country_id where playing_club = 'Liverpool' and country_name = 'England'


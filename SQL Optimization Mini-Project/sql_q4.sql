select d.name from teaching t inner join professor p on t.profid = p.id inner join transcript c on t.crscode = c.crscode inner join student d on c.studid = d.id
where p.name = 'Amber Hill'

--query runs fast and restructuring of the query renders optomization not necessary.
--joins are much faster than the original subqueries.
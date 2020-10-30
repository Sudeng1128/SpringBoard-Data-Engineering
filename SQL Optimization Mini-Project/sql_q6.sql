select name from course c inner join transcript t on c.crscode = t.crscode inner join student s on t.studid = s.id
where deptid = 'MAT'

--rewritten the query for SQL Server using joins, performance is instant, no further optomization is needed
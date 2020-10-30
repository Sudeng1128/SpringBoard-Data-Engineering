SELECT name FROM Student WHERE id IN (SELECT studId FROM Transcript WHERE crsCode = 'MGT382')

--query ran fast and without problem, no optomization is needed
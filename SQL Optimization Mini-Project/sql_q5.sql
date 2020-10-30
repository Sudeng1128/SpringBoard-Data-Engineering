SELECT * FROM Student, 
	(SELECT studId FROM Transcript, Course WHERE deptId = 'MGT' AND Course.crsCode = Transcript.crsCode
	AND studId NOT IN
	(SELECT studId FROM Transcript, Course WHERE deptId = 'EE' AND Course.crsCode = Transcript.crsCode)) as alias
WHERE Student.id = alias.studId;

--query runs nearly instant, no optomization is needed
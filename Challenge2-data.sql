SELECT * FROM student;

SELECT * FROM course;

SELECT * FROM mark;

SELECT S.sid, sname, gender
INTO OUTFILE '/var/lib/mysql-files/physics.txt'
FROM student AS S JOIN course AS C JOIN mark AS M
ON M.sid = S.sid AND M.cid = C.cid
WHERE cname = 'physics'
ORDER BY score DESC
LIMIT 1;

SELECT @tom_id := sid FROM student WHERE sname = 'Tom';

SELECT @cmt_id := cid FROM course WHERE cname = 'Chemistry';

SELECT @tom_grade:=score FROM mark WHERE sid = @tom_id AND cid = @cmt_id;

UPDATE mark SET score = @tom_grade + 3 WHERE sid = @tom_id AND cid = @cmt_id;




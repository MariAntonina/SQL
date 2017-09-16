#1
#SELECT * FROM nurse WHERE Registered = 0;
#2
#SELECT * FROM nurse WHERE Position = 'Head Nurse';
#3
#SELECT d.Name AS'Dep name', p.Name AS'Physycian name' FROM physician p, 
#Department d WHERE d.head = p.employeeid;
#4
#SELECT COUNT( /*DISTINCT*/ Patient)  FROM appointment WHERE Physician IS NOT NULL;
#5
#SELECT BlockFloor, BlockCode FROM room WHERE RoomNumber = 212;
#6
#SELECT COUNT(RoomNumber) FROM room WHERE Unavailable = 0;
#7 
#SELECT COUNT(RoomNumber) FROM room WHERE Unavailable = 1;
#8
#SELECT p.Name, d.Name FROM department d, physician p, affiliated_with a
#WHERE a.Physician = p.EmployeeID AND a.Department = d.DepartmentID;
#9
#SELECT pr.Name, py.Name FROM physician py, trained_in t, procedures pr
#WHERE t.Treatment = pr.Code AND t.Physician = py.EmployeeID;
#10
#SELECT p.Name FROM physician p , affiliated_with a
#WHERE PrimaryAffiliation = 'false' 
#AND  a.Physician = p.EmployeeID;
#11
#SELECT p.Name FROM physician p ,trained_in t
#WHERE p.EmployeeID = t.Physician AND Treatment IS NULL;
#12
#SELECT p.Name FROM patient p , stay s, room r
#WHERE s.Patient = p.SSN 

#13
SELECT n.Name, a.ExaminationRoom 
FROM appointment a  RIGHT JOIN nurse n
ON a.prepnurse = n.employeeid;

#14
SELECT p.Name, n.Name, f.Name, a.ExaminationRoom, a.Start
FROM patient p
JOIN appointment a 
ON a.patient = p.SSN
JOIN nurse n 
ON a.PrepNurse = n.EmployeeID
JOIN physician f 
ON a.physician = n.EmployeeID
WHERE a.start = "2008-04-25 10:00:00";

#15


#16
SELECT blockcode, COUNT(*)
FROM Room 
WHERE Unavailable = 0
GROUP BY blockcode 
ORDER BY blockcode;

#17
SELECT BlockFloor, COUNT(*)
FROM Room 
WHERE Unavailable = 0
GROUP BY BlockFloor
ORDER BY BlockFloor;

#18
SELECT BlockFloor, BlockCode, COUNT(*)
FROM room
WHERE Unavailable = 0
GROUP BY BlockFloor, BlockCode
ORDER BY BlockFloor, BlockCode;

#19
SELECT BlockFloor, BlockCode, COUNT(*)
FROM room
WHERE Unavailable = 1
GROUP BY BlockFloor, BlockCode
ORDER BY BlockFloor, BlockCode;

#20
SELECT  BlockFloor, COUNT(Unavailable = '1') FROM room WHERE MAX(Unavailable = '1');
/*SELECT BlockFloor AS 'Flor', COUNT(*) AS 'RoomNo'
FROM room
WHERE Unavailable = 0 GROUP BY BlockFloor
HAVING 
COUNT(*) =*/
SELECT max(zz) AS 'Highest' FROM
(SELECT  BlockFloor, COUNT(*) AS zz 
FROM room r WHERE Unavailable = 0
GROUP BY BlockFloor) AS zzzzz;


SELECT BlockFloor, COUNT(*)
FROM room
WHERE Unavailable = 0
GROUP BY BlockFloor
ORDER BY BlockFloor LIMIT 1;
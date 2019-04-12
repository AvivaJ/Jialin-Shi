-- find the cancellation rate of requests made by unbanned users between Oct 1, 2013 and Oct 3, 2013
Create table If Not Exists Trips (Id int, Client_Id int, Driver_Id int, City_Id int, Status ENUM('completed', 'cancelled_by_driver', 'cancelled_by_client'), Request_at varchar(50));
Create table If Not Exists Users (Users_Id int, Banned varchar(50), Role ENUM('client', 'driver', 'partner'));
Truncate table Trips;
insert into Trips (Id, Client_Id, Driver_Id, City_Id, Status, Request_at) values ('1', '1', '10', '1', 'completed', '2013-10-01');
insert into Trips (Id, Client_Id, Driver_Id, City_Id, Status, Request_at) values ('2', '2', '11', '1', 'cancelled_by_driver', '2013-10-01');
insert into Trips (Id, Client_Id, Driver_Id, City_Id, Status, Request_at) values ('3', '3', '12', '6', 'completed', '2013-10-01');
insert into Trips (Id, Client_Id, Driver_Id, City_Id, Status, Request_at) values ('4', '4', '13', '6', 'cancelled_by_client', '2013-10-01');
insert into Trips (Id, Client_Id, Driver_Id, City_Id, Status, Request_at) values ('5', '1', '10', '1', 'completed', '2013-10-02');
insert into Trips (Id, Client_Id, Driver_Id, City_Id, Status, Request_at) values ('6', '2', '11', '6', 'completed', '2013-10-02');
insert into Trips (Id, Client_Id, Driver_Id, City_Id, Status, Request_at) values ('7', '3', '12', '6', 'completed', '2013-10-02');
insert into Trips (Id, Client_Id, Driver_Id, City_Id, Status, Request_at) values ('8', '2', '12', '12', 'completed', '2013-10-03');
insert into Trips (Id, Client_Id, Driver_Id, City_Id, Status, Request_at) values ('9', '3', '10', '12', 'completed', '2013-10-03');
insert into Trips (Id, Client_Id, Driver_Id, City_Id, Status, Request_at) values ('10', '4', '13', '12', 'cancelled_by_driver', '2013-10-03');
Truncate table Users;
insert into Users (Users_Id, Banned, Role) values ('1', 'No', 'client');
insert into Users (Users_Id, Banned, Role) values ('2', 'Yes', 'client');
insert into Users (Users_Id, Banned, Role) values ('3', 'No', 'client');
insert into Users (Users_Id, Banned, Role) values ('4', 'No', 'client');
insert into Users (Users_Id, Banned, Role) values ('10', 'No', 'driver');
insert into Users (Users_Id, Banned, Role) values ('11', 'No', 'driver');
insert into Users (Users_Id, Banned, Role) values ('12', 'No', 'driver');
insert into Users (Users_Id, Banned, Role) values ('13', 'No', 'driver');
select * from Trips;
select * from Users;


--solution1 
 SELECT t.request_at AS Day, 
        ROUND(
            SUM(
                CASE 
                    WHEN t.status = 'completed' THEN 0 
                    ELSE 1 
                END) 
        
             / 
             (SELECT COUNT(t.status))
             , 2) 
 AS 'Cancellation Rate' FROM 
(SELECT *
FROM trips
INNER JOIN users 
ON trips.client_id = users.users_id 
WHERE users.banned = 'No') AS t 

GROUP BY t.request_at
HAVING t.request_at BETWEEN '2013-10-01' AND '2013-10-03';


--solution2
SELECT      request_at AS "Day", 
            ROUND(((SUM(CASE WHEN LOWER(Status) LIKE "cancelled%" THEN 1.000 ELSE 0 END)) / COUNT(id)), 2) AS "Cancellation Rate" 
FROM        trips
WHERE       client_id NOT IN (SELECT users_id FROM users WHERE banned = 'Yes')
AND         request_at BETWEEN '2013-10-01' AND '2013-10-03'
GROUP BY    request_at;


--solution3
SELECT      request_at AS "Day", 
            ROUND(((SUM(CASE WHEN LOWER(Status) LIKE "cancelled%" THEN 1.000 ELSE 0 END)) / COUNT(id)), 2) AS "Cancellation Rate" 
FROM        trips AS t
JOIN        users AS u
ON          t.client_id = u.users_id
AND         u.banned ='No'
WHERE       request_at BETWEEN '2013-10-01' AND '2013-10-03'
GROUP BY    request_at;
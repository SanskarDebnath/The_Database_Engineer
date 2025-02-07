/*update postgress_learning set username = 'SANSKAR DEBNATH' where id = 1
returning *;
*/

--Delete from postgress_learning where id = 1;

--delete from postgress_learning;

--select * from postgress_learning;

/*INSERT INTO postgress_learning (username, age, email, gender, salary, id) VALUES
('Sanskar', 23, 'sanskardebnath2019@example.com', 'M', 500.00, 1),
('Tripti', 20, 'tripti.m@example.com', 'F', 650.50, 2),
('Rahul', 32, 'rahul.kapoor@example.com', 'M', 800.75, 3),
('Priya', 24, 'priya.singh@example.com', 'F', 450.25, 4),
('Anika', 29, 'anika.roy@example.com', 'F', 700.00, 5),
('Avinash', 24, 'Avinash@example.com', 'M', 900.00, 6);

*/

--select * from postgress_learning;

--update postgress_learning set salary = salary + 50 where gender = 'F' returning *;



--select * from postgress_learning order by id DESC;

select * from postgress_learning order by salary DESC, id ASC LIMIT(2);
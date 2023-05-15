CREATE TABLE Route(
    route_id int AUTO_INCREMENT primary key,
    source VARCHAR(50),
    destination varchar(50),
    fare FLOAT,
    time INT
);

-- i. Insert atleast 10 records of your own choice.


INSERT INTO Route (route_id, source, destination, fare, time)
VALUES
    ('1', 'Silchar', 'Hailakandi', 40.50, 60),
    ('2', 'Silchar', 'Karimganj', 30.00, 45),
    ('3', 'Silchar', 'Lala', 20.00, 30),
    ('4', 'Silchar', 'Manipur', 10.00, 15),
    ('5', 'Hailakandi', 'Silchar', 40.50, 60),
    ('6', 'Karimganj', 'Silchar', 30.00, 45),
    ('7', 'Lala', 'Silchar', 20.00, 30),
    ('8', 'Sonai', 'Silchar', 10.00, 15),
    ('9', 'Silchar', 'Udarbond', 25.00, 30),
    ('10', 'Udarbond', 'Silchar', 25.00, 30);

 -- output after showing

    # route_id	source	destination	fare	time
1	'Silchar'	'Hailakandi'	'40.5'	60
2	'Silchar'	'Karimganj'	'30'	45
3	'Silchar'	'Lala'	'20'	30
4	'Silchar'	'Manipur'	'10'	15
5	'Hailakandi'	'Silchar'	'40.5'	60
6	'Karimganj'	'Silchar'	'30'	45
7	'Lala'	'Silchar'	'20'	30
8	'Sonai'	'Silchar'	'10'	15
9	'Silchar'	'Udarbond'	'25'	30
10	'Udarbond'	'Silchar'	'25'	30


-- ii. Display the fare of Silchar to Karimgang route.

SELECT fare FROM Route
WHERE source = 'Silchar' AND destination = 'Karimganj';


 -- output after showing


# fare
'30'


-- iii. Show the information of the route which takes maximum time.


SELECT * FROM route
WHERE time = (SELECT max(time) FROM route )
LIMIT 1;

 -- output after showing


# route_id	source	destination	fare	time
1	'Silchar'	'Hailakandi'	'40.5'	60

-- iv. Increase the fare by 5% of each route.

UPDATE route

set fare = fare * 1.05;

 -- output after showing

# route_id	source	destination	fare	time
1	'Silchar'	'Hailakandi'	'42.525'	60
2	'Silchar'	'Karimganj'	'31.5'	45
3	'Silchar'	'Lala'	'21'	30
4	'Silchar'	'Manipur'	'10.5'	15
5	'Hailakandi'	'Silchar'	'42.525'	60
6	'Karimganj'	'Silchar'	'31.5'	45
7	'Lala'	'Silchar'	'21'	30
8	'Sonai'	'Silchar'	'10.5'	15
9	'Silchar'	'Udarbond'	'26.25'	30
10	'Udarbond'	'Silchar'	'26.25'	30

-- v. Stopped the bus facility from Silchar to Manipur.


DELETE from route
WHERE source = 'silchar' AND destination = 'manipur';

 -- output after showing

# route_id	source	destination	fare	time
1	'Silchar'	'Hailakandi'	'42.525'	60
2	'Silchar'	'Karimganj'	'31.5'	45
3	'Silchar'	'Lala'	'21'	30
5	'Hailakandi'	'Silchar'	'42.525'	60
6	'Karimganj'	'Silchar'	'31.5'	45
7	'Lala'	'Silchar'	'21'	30
8	'Sonai'	'Silchar'	'10.5'	15
9	'Silchar'	'Udarbond'	'26.25'	30
10	'Udarbond'	'Silchar'	'26.25'	30
